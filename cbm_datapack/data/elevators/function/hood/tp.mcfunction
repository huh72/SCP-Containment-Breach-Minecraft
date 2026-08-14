execute at @n[tag=finalElevator] run tp @n[tag=tpTarget] ~ ~ ~

# say @p[tag=tpTarget] -- tpTarget!

# say @n[tag=finalElevator,tag=0,tag=nuke] final elevator 0 - from tp
# say @n[tag=finalElevator,tag=1,tag=nuke] final elevator 1 - from tp

# say @n[tag=currElevator,tag=0,tag=nuke] curr elevator 0 - from tp
# say @n[tag=currElevator,tag=1,tag=nuke] curr elevator 1 - from tp

$execute at @n[tag=finalElevator] as @n[tag=tpTarget] at @s run tp @s ~$(moveOnX) ~ ~$(moveOnZ) ~$(diffRotX) ~

execute as @n[tag=tpTarget] at @s if entity @n[tag=elevator, tag=049, tag=1, distance=..5] run tag @s add location.049chamber
execute as @n[tag=tpTarget] at @s unless entity @n[tag=elevator, tag=049, tag=1, distance=..5] run tag @s remove location.049chamber

execute as @n[tag=tpTarget] at @s if entity @n[tag=elevator, tag=nuke, tag=1, distance=..5] run tag @s add location.nuke
execute as @n[tag=tpTarget] at @s unless entity @n[tag=elevator, tag=nuke,tag=1, distance=..5] run tag @s remove location.nuke

execute as @n[tag=tpTarget] at @s if entity @n[tag=elevator, tag=106, tag=1, distance=..5] run tag @s add location.106chamber
execute as @n[tag=tpTarget] at @s unless entity @n[tag=elevator, tag=106,tag=1, distance=..5] run tag @s remove location.106chamber

execute as @n[tag=tpTarget] at @s if entity @n[tag=elevator, tag=939, tag=1, distance=..5] run tag @s add location.939storage
execute as @n[tag=tpTarget] at @s unless entity @n[tag=elevator, tag=939, tag=1, distance=..5] run tag @s remove location.939storage

execute as @n[tag=tpTarget] at @s if entity @n[tag=elevator, tag=gateA, tag=1, distance=..5] run tag @s add location.surfaceA
execute as @n[tag=tpTarget] at @s unless entity @n[tag=elevator, tag=gateA, tag=1, distance=..5] run tag @s remove location.surfaceA

execute as @n[tag=tpTarget] at @s if entity @n[tag=elevator, tag=gateB, tag=1, distance=..5] run tag @s add location.surfaceB
execute as @n[tag=tpTarget] at @s unless entity @n[tag=elevator, tag=gateB, tag=1, distance=..5] run tag @s remove location.surfaceB

tag @n[tag=tpTarget] remove tpTarget

# $say movepnX:$(moveOnX), diffRot:$(diffRotX), tpTarget:@p[tag=tpTarget]

# tell @p[tag=tpTarget] "Was teleported succesfully!"

