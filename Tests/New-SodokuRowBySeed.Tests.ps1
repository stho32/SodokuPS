Remove-Module Sodoku*
Import-Module $PSScriptRoot/../Sodoku.psm1

Describe "New-SodokuRowBySeed" {
  It "generates 123456789 for seed 0" {
    $newRow = New-SodokuRowBySeed -Seed 0

    $newRow.Length | Should -Be 9
    $newRow[0] | Should -Be 1
    $newRow[1] | Should -Be 2
    $newRow[2] | Should -Be 3

    $newRow[3] | Should -Be 4
    $newRow[4] | Should -Be 5
    $newRow[5] | Should -Be 6

    $newRow[6] | Should -Be 7
    $newRow[7] | Should -Be 8
    $newRow[8] | Should -Be 9
  }

  It "generates 213456789 for seed 1" {
    $newRow = New-SodokuRowBySeed -Seed 1
    
    $newRow.Length | Should -Be 9
    $newRow[0] | Should -Be 2
    $newRow[1] | Should -Be 1
    $newRow[2] | Should -Be 3

    $newRow[3] | Should -Be 4
    $newRow[4] | Should -Be 5
    $newRow[5] | Should -Be 6

    $newRow[6] | Should -Be 7
    $newRow[7] | Should -Be 8
    $newRow[8] | Should -Be 9
  }

}