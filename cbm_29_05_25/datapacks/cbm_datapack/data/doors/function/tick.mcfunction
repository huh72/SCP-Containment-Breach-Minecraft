#
scoreboard players remove @e[scores={door_interact_cd=1..}] door_interact_cd 1

#interact check
execute as @e[tag=door_marker,tag=r0] at @s positioned ~2 ~ ~1.5 run tag @a[distance=..1.25] add can_interact_with_door
execute as @e[tag=door_marker,tag=r0] at @s positioned ~-2 ~ ~-1.5 run tag @a[distance=..1.25] add can_interact_with_door

execute as @e[tag=door_marker,tag=r1] at @s positioned ~-1.5 ~ ~2 run tag @a[distance=..1.25] add can_interact_with_door
execute as @e[tag=door_marker,tag=r1] at @s positioned ~1.5 ~ ~-2 run tag @a[distance=..1.25] add can_interact_with_door

execute as @a[tag=can_interact_with_door,scores={door_right_click=1..}] if score @s access_level >= @n[tag=door_marker] access_level at @s as @n[tag=aj.door0.root] at @s if score @n[tag=door_marker,tag=closed,distance=..1] door_interact_cd matches 0 run function animated_java:door0/animations/openclosetoggle/play

execute as @a[tag=can_interact_with_door,scores={door_right_click=1..}] if score @s access_level >= @n[tag=door_marker] access_level at @s as @n[tag=aj.door0.root] at @s if score @n[tag=door_marker,tag=opened,distance=..1] door_interact_cd matches 0 run function animated_java:door0/animations/openclosetoggle/resume
scoreboard players set @a door_right_click 0

tag @a remove can_interact_with_door