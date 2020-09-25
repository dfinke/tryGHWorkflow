Describe "Just test" {
    It "Should be true" {
        $true | Should -Be $true            
        # if ($PSVersionTable.Platform -eq 'Unix') {
        #     $true | Should -Be $true            
        # }
        # else {
        #     $false | Should -Be $true
        # }
    }
}