function race
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [int]$v1,
        [int]$v2,
        [int]$g
    )
    # $v1 = Velocity of tortoise 1.  $v2 = Velocity of tortoise 2.  $g = lead of first tortoise's start
    if ($v1 -ge $v2)
    {
      #Tortoise 1 going same speed or faster than tortoise 2.  Impossible for tortoise 2 to catch up.
      return "-1 -1 -1"
    }
    else
    {
        $relativeSpeed = $v2 - $v1
        #distance = relative speed * time
        #therefore time = distance/relative speed
        $catchTime = $g/$relativeSpeed
        $hours = [Math]::Truncate($catchTime)
        $minutes = ($catchTime - $hours) *60
        $seconds = [Math]::Truncate(($minutes-([Math]::Truncate($minutes)))*60)
        $minutes = [Math]::Truncate($minutes)
        
        if ($seconds -ge 59)
        {
          $seconds = 0
          $minutes = $minutes + 1
        }
        if ($minutes -gt 59)
        {
          $minutes = 0
          $hours = $hours + 1
        }
        
        #$seconds = [Math]::Round($seconds)
        return "$hours $minutes $seconds"
    }
}