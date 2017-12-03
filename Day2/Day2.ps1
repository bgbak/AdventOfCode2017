#Part 1
    $in = Get-content .\input.txt
    [array]$in = $in.Split("`t").Split("`n").Split(" ")
 
    #$in = @("5195","753","2468")
    foreach($i in $in){
        $x = [int[]](($i -split '') -ne '')
        $Max = ($x|Measure-Object -Maximum).Maximum
        $Min = ($x|Measure-Object -Minimum).Minimum

        $Diff = $Max - $Min

        $Result += $Diff
    }
    Write-Output "Part1:" $Result


#Part 2