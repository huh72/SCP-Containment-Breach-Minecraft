$execute if entity @s[tag=13] positioned ~ ~1 ~1 run place template $(room)0
$execute if entity @s[tag=14] positioned ~ ~-9 ~2 run place template $(room)1
$execute if entity @s[tag=15] positioned ~-2 ~1 ~2 run place template $(room)2
$execute if entity @s[tag=16] positioned ~2 ~1 ~ run place template $(room)3


#elev ID = 6
#g 13
execute if entity @s[tag=13] run function generation:ez/int_room_gen/dd/gatea/0

#g 14
# execute if entity @s[tag=14] run function generation:ez/int_room_gen/dd/gatea/1

#g 15
execute if entity @s[tag=15] run function generation:ez/int_room_gen/dd/gatea/2

#g 16
execute if entity @s[tag=16] run function generation:ez/int_room_gen/dd/gatea/3

#g init elevator doors
execute at @n[tag=elevatorSpawnpoint] as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/play

#g init elevator
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] ID 6
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] moveTime -1
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] level 0
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @n[tag=elevator] onLevel 0
execute at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevator] add gateA
execute at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevator] add 0

#g init gates
execute at @n[tag=elevatorSpawnpoint] run scoreboard players set @e[tag=gate,sort=nearest,limit=2] access_level 5

#g sent elevator 
execute at @n[type=marker, tag=elevator, tag=gateA, tag=1] as @n[tag=elevatorDoors] if entity @s[tag=opened] run function animated_java:elevator_doors/animations/openclose/resume
scoreboard players set @n[type=marker, tag=elevator, tag=gateA, tag=1] level 1
scoreboard players set @n[type=marker, tag=elevator, tag=gateA, tag=1] onLevel 0
tag @n[type=marker, tag=elevator, tag=gateA, tag=1] add broken

#g clear
kill @n[tag=elevatorSpawnpoint]
kill @n[tag=gateSpawnpoint]
kill @s