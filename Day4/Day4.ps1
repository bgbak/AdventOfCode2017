$in = Get-Content ($PSScriptRoot + "\input.txt")

foreach($Line in $in){
    # Split lines
    $Line = $Line.Split(" ")

    if ($Line.Count -eq  ($Line|Select-Object -Unique | Measure-Object).Count){
        $Valid += 1
    }
}

Write-Output "Valid passphrases: " $Valid
