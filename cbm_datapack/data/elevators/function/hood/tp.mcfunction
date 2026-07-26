execute at @n[tag=finalElevator] run tp @p[tag=tpTarget] ~ ~ ~

say @p[tag=tpTarget] -- tpTarget!

say @n[tag=finalElevator,tag=0,tag=nuke] final elevator 0 - from tp
say @n[tag=finalElevator,tag=1,tag=nuke] final elevator 1 - from tp

say @n[tag=currElevator,tag=0,tag=nuke] curr elevator 0 - from tp
say @n[tag=currElevator,tag=1,tag=nuke] curr elevator 1 - from tp

$execute at @n[tag=finalElevator] as @p[tag=tpTarget] at @s run tp @s ~$(moveOnX) ~ ~$(moveOnZ) ~$(diffRotX) ~

execute as @p[tag=tpTarget] at @s if entity @n[tag=elevator, tag=049, tag=1, distance=..5] run tag @s add location.049chamber
execute as @p[tag=tpTarget] at @s unless entity @n[tag=elevator, tag=049, tag=1, distance=..5] run tag @s remove location.049chamber

execute as @p[tag=tpTarget] at @s if entity @n[tag=elevator, tag=nuke, tag=1, distance=..5] run tag @s add location.nuke
execute as @p[tag=tpTarget] at @s unless entity @n[tag=elevator, tag=nuke,tag=1, distance=..5] run tag @s remove location.nuke

execute as @p[tag=tpTarget] at @s if entity @n[tag=elevator, tag=106, tag=1, distance=..5] run tag @s add location.106chamber
execute as @p[tag=tpTarget] at @s unless entity @n[tag=elevator, tag=106,tag=1, distance=..5] run tag @s remove location.106chamber

# $say movepnX:$(moveOnX), diffRot:$(diffRotX), tpTarget:@p[tag=tpTarget]

# tell @p[tag=tpTarget] "Was teleported succesfully!"

