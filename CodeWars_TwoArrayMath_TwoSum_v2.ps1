<#

Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, 
give the target value. The indices of these items should then be returned in a tuple like so: (index1, index2).

For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

Based on: http://oj.leetcode.com/problems/two-sum/

#>

function Get-TwoSum ([System.Array]$numbers, [int]$target)
{
    $numberList = @{}
    $output = @()
    for ($i=0; $i -lt $numbers.length; $i++)
    {
        $delta = $target - $numbers[$i]
        if ($numberList.ContainsKey($delta))
        {
            # Match found.  Return index location of match from hash table along with current index.
            $output = ($numberList[$delta],$i) 
        }
        elseif (!($numberList.ContainsKey($numbers[$i])))
        {
            # Match not found in hash table.  Add current number, along with index, to the hash table (as long as the number isn't already in it)
            $numberList.add($numbers[$i],$i)    
        }
        else 
        {
            #Number already in $numberList.  Continue
        }
    }
    return $output
}

Get-TwoSum -numbers @(1, 2, 3) -target 4
#Get-TwoSum @(1234, 5678, 9012) 14690
Get-TwoSum -numbers @(1234, 5678, 9012) -target 14690
Get-TwoSum -numbers @(2, 2, 3) -target 4