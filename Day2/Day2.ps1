#Part 1
$in = Get-content .\input.txt
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

foreach ($i in $in) {
    $i = $i.Split("`t")
    $i = foreach($n in $i){
        [int]::Parse($n)
    }

    for($n = 0; $n -lt ($i.Count - 1); $n++){
        if($i[$n] % $i[$n + 1] -eq 0 ){
            $Part2Result += $i[$n] / $i[$n + 1]
        }
    }
    for($n = $i.Count -1 ; $n -gt 0; $n--){
        if($i[$n] % $i[$n - 1] -eq 0 ){
            $Part2Result += $i[$n] / $i[$n - 1]
        }
    }
}
Write-Output "Part2: " $Part2Result