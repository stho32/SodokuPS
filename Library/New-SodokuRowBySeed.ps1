function New-SodokuRowBySeed {
  <#
    .SYNOPSIS
    Generates a new valid combination of a row using a seed
    
    .DESCRIPTION
    To be able to permutate sodoku rows precisely we need a way to 
    describe a state by a number. 

    For a complete valid row of sodoku numbers there are 
    9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1 
    possible variations.

    The function can be called with or without an initial line of 
    numbers.

    .EXAMPLE
    New-SodokuRowBySeed -Seed 0

    1 2 3 4 5 6 7 8 9

    .EXAMPLE
    New-SodokuRowBySeed -Seed 1

    2 1 3 4 5 6 7 8 9
  #>
  [CmdletBinding()]
  param (
    [Parameter(Mandatory=$true)]
    [int]$Seed    
  )
  
  process {
    
  }
}