Import-Module ./Sodoku.psm1

$sodoku = @(
  @(3,0,0,  0,0,0,  0,0,1),
  @(0,0,5,  7,0,2,  3,0,0),
  @(0,6,0,  4,0,3,  0,9,0),

  @(0,3,4,  0,0,0,  2,1,0),
  @(0,0,0,  0,0,0,  0,0,0),
  @(0,1,8,  0,0,0,  6,3,0),

  @(0,8,0,  5,0,6,  0,7,0),
  @(0,0,2,  8,0,4,  1,0,0),
  @(9,0,0,  0,0,0,  0,0,8)
)

Out-Sodoku $sodoku


function Test-SodokuRowValid {
  <#
    .SYNOPSIS
    Validates if the row is valid
  #>
  [CmdletBinding()]
  param (
    [Parameter(Mandatory=$true)]
    $Sodoku, 
    [Parameter(Mandatory=$true)]
    [int]$Zeile
  )
  
  process {
  }
}