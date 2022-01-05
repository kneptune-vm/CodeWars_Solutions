<#
Complete the method/function so that it converts dash/underscore delimited words into camel casing. 
The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

Examples
"the-stealth-warrior" gets converted to "theStealthWarrior"
"The_Stealth_Warrior" gets converted to "TheStealthWarrior"
#>

function Convert-StringToCamelCase($String)
{
    $outputStr = ""
    $String = $string.replace('_','-') # Replace all underscores with dashes for consistency.
    $charArray =$String.Split("-") # Create array of individual strings, split at the "-" character.
    $charArray = $charArray.Trim()
    Write-Host "*"+$charArray+"*"
    $charArray
    for ($i=0; $i -lt $charArray.length; $i++)
    {
        $tempStr = $charArray[$i]
        if ($i -eq 0)
        {
            #First word.  See if source first word starts with capital letter.
            if ($tempStr -cmatch '^[A-Z]') # Source first word capitalized
            {
                $tempStrCharArray = [char[]]$tempStr
                for ($j=1; $j -lt $tempStrCharArray.Length; $j++)
                {
                    $tempStrCharArray[$j] = [char](([string]$tempStrCharArray[$j]).toLower())
                    #Issues here
                }
                $charArray[$i]=$tempStrCharArray

            }
            else #Source first word not capitilized.
            {
                for ($j=0; $j -lt $tempStrCharArray.Length; $j++)
                {
                    $tempStrCharArray[$j] = ([string]$tempStrCharArray[$j]).toLower()
                }
                $charArray[$i]=$tempStrCharArray
            }
        }
        else 
        {
            for ($k=0; $k -lt $tempStrCharArray.length; $k++)
            {
                $tempStrCharArray[$k] = ([string]$tempStrCharArray[$k]).toLower()
            }  
            $charArray[$i]=$tempStrCharArray  
        }
        foreach ($word in $charArray)
        {
            $outputStr +=$word
        }
    }
    
    
    return $outputStr
}

#Convert-StringToCamelCase "the_stealth_warrior"
Convert-StringToCamelCase "the-Stealth-Warrior"
