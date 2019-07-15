function Out-Sodoku($Sodoku) {
  <#
    .SYNOPSIS
    Gibt ein Sodoku auf der Kommandozeile aus.
  #>
  Clear-Host

  Write-Host "===|=======|=======|=======" -ForegroundColor White
  Write-Host "   | 1 2 3 | 4 5 6 | 7 8 9" -ForegroundColor White
  Write-Host "===|=======|=======|=======" -ForegroundColor White

  for ($i = 0; $i -lt $sodoku.Count; $i++) {
    $zeile = $i+1
    $zeilendaten = $Sodoku[$i]
    if ($zeile -eq 4 -or $zeile -eq 7) {
      Write-Host "===|=======|=======|=======" -ForegroundColor White
    } 
    Write-Host " $zeile |" -ForegroundColor White -NoNewline

    for ($j = 0; $j -lt $zeilendaten.Length; $j++) {
      if ( $zeilendaten[$j] -ne 0 ) {
        Write-Host " $($zeilendaten[$j])" -ForegroundColor Yellow -NoNewline 
      } else {
        Write-Host "  " -ForegroundColor Yellow -NoNewline 
      }

      if ($j -eq 2 -or $j -eq 5 ) {
        Write-Host " |" -ForegroundColor White -NoNewline
      }
    }

    Write-Host ""
  }  

  Write-Host "===|=======|=======|=======" -ForegroundColor White
}
