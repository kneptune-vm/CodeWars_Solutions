<#
Your task is to write function findSum.

Upto and including n, this function will return the sum of all multiples of 3 and 5.

For example:

findSum(5) should return 8 (3 + 5)

findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)
#>

function findSum($n) 
{
    $runningSum = 0
    for ($i=1;$i -le $n; $i++)
    {
        if ($i % 3 -eq 0)
        {
            $runningSum = $runningSum + $i
        }
        elseif ($i % 5 -eq 0)
        {
            $runningSum = $runningSum + $i
        }
    }
    return $runningSum
}

findSum 10