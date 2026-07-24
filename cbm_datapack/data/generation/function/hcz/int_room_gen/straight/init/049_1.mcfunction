# room type #2
say init 049_1!
execute as @n[type=marker, tag=scp049.elevator0Spawn] at @s positioned ~-4 ~-1 ~-2 run place template hcz:elevator ~ ~ ~ counterclockwise_90
execute as @n[type=marker, tag=scp049.elevator1Spawn] at @s positioned ~1 ~-1 ~-4 run place template hcz:elevator

execute as @n[type=marker, tag=scp049.elevator0Spawn] at @s positioned ~ ~ ~-0.5 run function animated_java:elevator_doors/summon with storage aj:temp
execute as @n[type=marker, tag=scp049.elevator1Spawn] at @s positioned ~0.5 ~ ~ run function animated_java:elevator_doors/summon with storage aj:temp

execute as @n[type=marker, tag=scp049.elevator0Spawn] at @s run tag @n[tag=elevatorDoors] add r1
execute as @n[type=marker, tag=scp049.elevator1Spawn] at @s run tag @n[tag=elevatorDoors] add r0

execute at @n[type=marker, tag=scp049.elevator0Spawn] run tag @n[tag=elevator] add 0
execute at @n[type=marker, tag=scp049.elevator0Spawn] run tag @n[tag=elevator] add 049_0
execute at @n[type=marker, tag=scp049.elevator0Spawn] run tag @n[tag=elevator] add 049
execute at @n[type=marker, tag=scp049.elevator0Spawn] run scoreboard players set @n[tag=elevator] ID 3
execute at @n[type=marker, tag=scp049.elevator0Spawn] run scoreboard players set @n[tag=elevator] level 0
execute at @n[type=marker, tag=scp049.elevator0Spawn] run scoreboard players set @n[tag=elevator] onLevel 0
execute at @n[type=marker, tag=scp049.elevator0Spawn] run scoreboard players set @n[tag=elevator] moveTime -1

execute at @n[type=marker, tag=scp049.elevator1Spawn] run tag @n[tag=elevator] add 0
execute at @n[type=marker, tag=scp049.elevator1Spawn] run tag @n[tag=elevator] add 049_1
execute at @n[type=marker, tag=scp049.elevator1Spawn] run tag @n[tag=elevator] add 049
execute at @n[type=marker, tag=scp049.elevator1Spawn] run scoreboard players set @n[tag=elevator] ID 4
execute at @n[type=marker, tag=scp049.elevator1Spawn] run scoreboard players set @n[tag=elevator] level 0
execute at @n[type=marker, tag=scp049.elevator1Spawn] run scoreboard players set @n[tag=elevator] onLevel 0
execute at @n[type=marker, tag=scp049.elevator1Spawn] run scoreboard players set @n[tag=elevator] moveTime -1
