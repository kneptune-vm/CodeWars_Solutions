function play-pass($s, $n)
{
    # your code
    $shiftedString = ""
    $characterIndex = 0
    foreach ($char in $s.toCharArray()){
      $asciiVal = [int][char]$char
      if ($asciiVal -ge 65 -and $asciiVal -le 90) #character is a capital letter
      {
          $asciiValAdjusted = $asciiVal + $n #(No. 1: shift each letter by $n places)
          if ($asciiValAdjusted -gt 90)
          {
              $asciiValAdjusted = $asciiValAdjusted -26 # (No. 1: output must remain a letter)
          }
          if ($characterIndex%2 -eq 0) #(No. 4: Character position even.  Capitilize letter.)
          {
            #Character is already capitilized.  No action required.
            $shiftedString = $shiftedString + [char]$asciiValAdjusted
          }
          else #(No. 4: Character position odd.  Lowercase letter.)
          {
            $asciiValAdjusted = $asciiValAdjusted + 32
            $shiftedString = $shiftedString + [char]$asciiValAdjusted
          }
      }
      elseif ($asciiVal -ge 97 -and $asciiVal -le 122)
      {
          $asciiValAdjusted = $asciiVal + $n #(No. 1: shift each letter by $n places)
          if ($asciiValAdjusted -gt 122)
          {
              $asciiValAdjusted = $asciiValAdjusted -26 # (No. 1: output must remain a letter)
          }
          if ($characterIndex%2 -eq 0) #(No. 4: Character position even.  Capitilize letter.)
          {
            $asciiValAdjusted = $asciiValAdjusted - 32
            $shiftedString = $shiftedString + [char]$asciiValAdjusted
          }
          else #(No. 4: Character position odd.  Lowercase letter.)
          {
            #Character is already lowercase.  No action required.
            $shiftedString = $shiftedString + [char]$asciiValAdjusted
          }
      }
      elseif ($asciiVal -ge 48 -and $asciiVal -le 57) #Numerical (replace each digit with 9-n)
      {
        $nineMinus = 9-[string]$char
        $shiftedString = $shiftedString + $nineMinus.toString()
      }
      else
      {
        $shiftedString = $shiftedString + $char
      }
      $characterIndex ++
      
      
      
    }
    
    $temp = $shiftedString.toCharArray()
    [array]::Reverse($temp)
    $reversedString = -join($temp)
    return $reversedString

}
