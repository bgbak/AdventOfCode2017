[int]$i = 0
[int]$out = 0
[string]$in = $null
$x = 0 
$in = Get-Content .\input.txt
[int]$steps = $in.length / 2

while ($i -lt ($in.Length)){
    
    if($i -ge $in.length/2){
        [string]$x = $i - $in.length/2
    }
    else{
        [string]$x = $i + $steps
    }
    $n1 = $in[$i]
    
    if($x -ne "0"){
        $n2 = $in[$x]}
    else{
        $n2 = $in[0]}
  
    if($n1 -eq $n2){
        $out = $out + [int]$n1.ToString()
        }
    $i++
}

return $out