$execute if entity @s[tag=3] positioned ~ ~ ~-3 run place template $(room)1
$execute if entity @s[tag=4] positioned ~-3 ~ ~ run place template $(room)4
$execute if entity @s[tag=5] positioned ~ ~ ~ run place template $(room)3
$execute if entity @s[tag=6] positioned ~ ~ ~ run place template $(room)2

# execute if entity @s[tag=3] run say 3
# execute if entity @s[tag=4] run say 4
# execute if entity @s[tag=5] run say 5
# execute if entity @s[tag=6] run say 6


#init elevator doors
execute if entity @s[tag=3] at @n[tag=elevatorSpawnpoint] rotated 0 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=3] at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r1

execute if entity @s[tag=4] at @n[tag=elevatorSpawnpoint] rotated 90 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=4] at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r0

execute if entity @s[tag=5] at @n[tag=elevatorSpawnpoint] rotated 180 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=5] at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r1

execute if entity @s[tag=6] at @n[tag=elevatorSpawnpoint] rotated 270 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=6] at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r0

execute at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevator] add 939

execute at @n[tag=elevatorSpawnpoint] as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/play

execute at @n[tag=elevator, tag=939_1, tag=1] as @n[tag=elevatorDoors] if entity @s[tag=opened] run function animated_java:elevator_doors/animations/openclose/resume
scoreboard players set @n[tag=elevator, tag=939_1, tag=1] onLevel 0

#init storage door and levers
execute as @n[type=item_display, tag=singledoor1, tag=storage939door, tag=opened] run function animated_java:singledoor1/animations/open_close_toggle/resume
execute as @e[type=item_display, tag=lever, tag=storage939] if entity @s[tag=down] run function animated_java:lever/animations/switch/resume
tag @e[type=item_display, tag=lever, tag=storage939] remove uninteractibale

tag @e[tag=lever, tag=storage939] remove uninteractable


#init elevator
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] ID 1
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] moveTime -1
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] level 0
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] onLevel 0


kill @n[tag=elevatorSpawnpoint]
kill @s