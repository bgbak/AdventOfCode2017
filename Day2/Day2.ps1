#Part 1
$in = Get-Content ($PSScriptRoot + "\input.txt")
[array]$in = $in.Split("`n")
     
$result = 0
foreach ($i in $in) {

    $i = $i.Split("`t")
  
    $Max = ($i|Measure-Object -Maximum).Maximum
    $Min = ($i|Measure-Object -Minimum).Minimum

    $Diff = $Max - $Min

    $Result += [int]$Diff
}
Write-Output "Part1:" $Result

#Part 2
$Part2Result = 0
foreach ($i in $in) {
    $i = $i.Split("`t")
    $i = foreach($n in $i){
        [int]::Parse($n)
    }

    foreach($word in $i){
            for($x = 0 ; $x -lt 16; $x++){
                if(!($word -eq [int]$i[$x])){
                if ($word % [int]$i[$x] -eq 0){
                    $Part2Result += ($word / [int]$i[$x])
                }
            }
            }
        }
    }

Write-Output "Part2: " $Part2Result