$PSVersionTable

$modules = @("Pester", "ImportExcel")

$modules | ForEach-Object -Parallel {
    $module = $_
    Write-Host "Installing $module" -ForegroundColor Cyan
    Install-Module $module -Force -SkipPublisherCheck
    Import-Module $module -Force -PassThru
}

$pesterResults = Invoke-Pester -Output Detailed -PassThru

if ($pesterResults.FailedCount -gt 0) {
        
    '[Progress] Pester Results Failed'
    $pesterResults.Failed | Out-String
    
    '[Progress] Pester Results FailedBlocks'
    $pesterResults.FailedBlocks | Out-String
    
    '[Progress] Pester Results FailedContainers'
    $pesterResults.FailedContainers | Out-String

    Throw "Tests failed"
}