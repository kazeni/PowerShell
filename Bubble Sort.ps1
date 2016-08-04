
#$Number = "23,43,12,7,87,53,56,91,2,33,61"
#$NumberArray = $Number.Split(",")

$NumberArray = 1..20 | ForEach-Object {Get-Random -Maximum 1000}

for ($j=0;$j -le $NumberArray.Count -1;$j++){
  for ($i=0;$i -le $NumberArray.Count - 1;$i++)
     {
      if([int]$NumberArray[$i] -le [int]$NumberArray[$i+1] ) 
          { 
             $N = $NumberArray[$i]
             $NumberArray[$i] = $NumberArray[$i+1]
             $NumberArray[$i+1] = $N
            } 
      }
}
     Write-Host $NumberArray -NoNewline