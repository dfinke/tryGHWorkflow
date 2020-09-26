Describe "Just test" {
    It "Should be true" {
        $true | Should -Be $true            
    }

    It "Test file created true" {
        $fileName = "TestDrive:\test.txt"
        "hello" > $fileName

        Test-Path $fileName | should -be $true
    }
}