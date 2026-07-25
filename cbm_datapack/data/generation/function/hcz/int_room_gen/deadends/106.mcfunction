execute positioned ~ ~1 ~ run place template lcz:empty_small

#tag @n[type=minecraft:marker] add 106.initElevator
# 13/ 15/ 16
# 1 = r0; 2 = r1; 3 = r0; 4 = r1

# spawn room
$execute if entity @s[tag=13] positioned ~ ~-2 ~5 run place template $(room)1
$execute if entity @s[tag=15] positioned ~-6 ~-2 ~4 run place template $(room)3
$execute if entity @s[tag=16] positioned ~4 ~-2 ~ run place template $(room)2

# init elevators
execute if entity @s[tag=13] at @n[tag=106.elevatorSpawn] rotated 270 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=15] at @n[tag=106.elevatorSpawn] rotated 0 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=16] at @n[tag=106.elevatorSpawn] rotated 90 0 run function animated_java:elevator_doors/summon with storage aj:temp

execute at @n[tag=106.elevatorSpawn] as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/resume

execute at @n[tag=106.elevatorSpawn] run tag @n[tag=elevator] add 106
execute at @n[tag=106.elevatorSpawn] run tag @n[tag=elevator] add 0
execute at @n[tag=106.elevatorSpawn] run scoreboard players set @n[tag=elevator] ID 5
execute at @n[tag=106.elevatorSpawn] run scoreboard players set @n[tag=elevator] moveTime -1
execute at @n[tag=106.elevatorSpawn] run scoreboard players set @n[tag=elevator] level 0
execute at @n[tag=106.elevatorSpawn] run scoreboard players set @n[tag=elevator] onLevel 1

# kill @n[tag=106.elevatorSpawn]
kill @s
