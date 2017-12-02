[int]$i = 0
[int]$out = 0
$in = $null

$in = Get-Content .\input.txt

while ($i -le $in.Length){
    if($in[$i-1] -eq $in[$i]){
        $out = $out + ([int]$in[$i].ToString())
        $i++
    }
}

return $out