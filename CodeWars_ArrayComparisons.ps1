function mx-dif-lg($a1, $a2)
{
    if ($a1.count -ne 0 -and $a2.count -ne 0)
    {
        $output = @()
        foreach ($a1String in $a1)
        {
            foreach ($a2String in $a2)
            {
                $difference = [Math]::abs($a1String.length-$a2String.length)
                $output += $difference
            }
        }
        $output = $output | sort-object -descending
        return $output[0]
    }
    else
    {
        return -1
    }
    
}



$s1 = "hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"
#$s2 = "cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"
$s2 = @()

mx-dif-lg $s1 $s2