$NumberArray = 1..20 | ForEach-Object {Get-Random -Maximum 1000}
Write-Host $NumberArray -NoNewline
Write-Host ""

for ($i=0;$i -lt $NumberArray.Count; $i++ ){ 

             $val = $NumberArray[$i]
             $j = $i-1
                while($j -ge 0 -and $NumberArray[$j] -gt $val) 
                   {
                       $NumberArray[$j+1] = $NumberArray[$j]
                       $j--
                    }
                  $NumberArray[$j+1]=$val
        }

Write-Host  $NumberArray -NoNewline -ForegroundColor Yellow



