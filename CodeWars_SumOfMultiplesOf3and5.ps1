<#
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.
#>

function Get-SumOfMultiples($Value)
{
	$sum = 0
    if ($value -gt 0) # Value passed in not negative
    {
        for ($i=3; $i -lt $Value; $i++)
        {
            if ($i%3 -eq 0)
            {
                # Number is divisible by 3.  Add it.
                $sum = $sum + $i
            }
            elseif (($i%3 -ne 0)-and($i%5 -eq 0)) 
            {
                # Number not divisible by 3 (would have been added in if, above)
                # Number divisible by 5.  Add it.
                $sum = $sum + $i
            }
        }
        return $sum
    }
    else 
    {
        #Value passed in was negative.  Return 0.
        return 0  
    }
    
}

Get-SumOfMultiples 10
Get-SumOfMultiples 100
Get-SumOfMultiples 1000
Get-SumOfMultiples -1