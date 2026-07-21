execute at @n[tag=finalElevator] run tp @p[tag=tpTarget] ~ ~ ~

say @p[tag=tpTarget] -- tpTarget!

say @n[tag=finalElevator,tag=0,tag=nuke] final elevator 0 - from tp
say @n[tag=finalElevator,tag=1,tag=nuke] final elevator 1 - from tp

say @n[tag=currElevator,tag=0,tag=nuke] curr elevator 0 - from tp
say @n[tag=currElevator,tag=1,tag=nuke] curr elevator 1 - from tp

$execute at @n[tag=finalElevator] as @p[tag=tpTarget] at @s run tp @s ~$(moveOnX) ~ ~$(moveOnZ) ~$(diffRotX) ~

# $say movepnX:$(moveOnX), diffRot:$(diffRotX), tpTarget:@p[tag=tpTarget]

# tell @p[tag=tpTarget] "Was teleported succesfully!"

