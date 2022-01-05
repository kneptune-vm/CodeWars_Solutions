function accum($s)
{
    $outputString = ""

    $i=0
    foreach ($char in [char[]]$s)
    {
        $charStr = [string]$char
        $outputString = $outputString + $charStr.toUpper()
        #Write-Host $outputString
        

        if ($i -gt 0)
        {
            for ($j=1;$j -le $i; $j++)
            {
                $outputString = $outputString + $charStr.toLower()
            }
        }
        $i ++
        if ($i -lt $s.length)
        {
            $outputString = $outputString + "-"
        }
        
    }
}



accum "abcde"

#Example: accum("abcd") -> "A-Bb-Ccc-Dddd"