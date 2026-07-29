$execute if entity @s[tag=13] positioned ~ ~ ~ run place template $(room)2
$execute if entity @s[tag=14] positioned ~ ~ ~-1 run place template $(room)1
$execute if entity @s[tag=15] positioned ~ ~ ~-1 run place template $(room)1
$execute if entity @s[tag=16] positioned ~ ~ ~ run place template $(room)3

execute if entity @s[tag=13] run say 13
execute if entity @s[tag=14] run say 14
execute if entity @s[tag=15] run say 15
execute if entity @s[tag=16] run say 16


#init doors
execute if entity @s[tag=13] rotated 90 0 at @n[tag=elevatorSpawnpoint] run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=13] at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r0

execute if entity @s[tag=14] rotated 180 0 at @n[tag=elevatorSpawnpoint] run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=14] at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r1

execute if entity @s[tag=15] rotated 270 0 at @n[tag=elevatorSpawnpoint] run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=15] at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r0

execute if entity @s[tag=16] rotated 0 0 at @n[tag=elevatorSpawnpoint] run function animated_java:elevator_doors/summon with storage aj:temp
execute if entity @s[tag=16] at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r1

execute at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevator] add 939

execute at @n[tag=elevatorSpawnpoint] as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/play

execute at @n[tag=elevator, tag=939_0, tag=1] as @n[tag=elevatorDoors] if entity @s[tag=opened] run function animated_java:elevator_doors/animations/openclose/resume


#init elevator
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] moveTime -1
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] level 0
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] onLevel 0
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] ID 0


kill @n[tag=elevatorSpawnpoint]
kill @s