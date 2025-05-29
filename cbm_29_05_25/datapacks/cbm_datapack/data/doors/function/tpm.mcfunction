tp @n[tag=door_marker0] ~ ~ ~ ~ ~

execute store result score 78 v run data get entity @p Rotation[0] 1

execute if score 78 v matches 0 run tag @n[tag=door_marker0] add r0
execute if score 78 v matches 180 run tag @n[tag=door_marker0] add r0
execute if score 78 v matches -180 run tag @n[tag=door_marker0] add r0

execute if score 78 v matches 90 run tag @n[tag=door_marker0] add r1
execute if score 78 v matches -90 run tag @n[tag=door_marker0] add r1
execute if score 78 v matches 270 run tag @n[tag=door_marker0] add r1
execute if score 78 v matches -270 run tag @n[tag=door_marker0] add r1