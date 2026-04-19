$execute if entity @s[tag=1] positioned ~ ~1 ~6 run place template $(room)0
$execute if entity @s[tag=2] positioned ~6 ~1 ~ run place template $(room)1

#elevator generate
execute at @n[type=marker,tag=warhead.elevatorspawnpoint,tag=r0] run place template hcz:elevator ~3 ~-1 ~1 clockwise_90
execute at @n[type=marker,tag=warhead.elevatorspawnpoint,tag=r1] run place template hcz:elevator ~1 ~-1 ~-4 none

#spwan doors
execute at @n[type=marker,tag=warhead.elevatorspawnpoint,tag=r0] positioned ~ ~ ~0.5 rotated 180 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute at @n[type=marker,tag=warhead.elevatorspawnpoint,tag=r1] positioned ~0.5 ~ ~ rotated 90 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] as @n[type=item_display,tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/play

#::: init elevator:::
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run tag @n[tag=elevator] add 0
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run tag @n[tag=elevator] add nuke
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run scoreboard players set @n[tag=elevator] ID 2
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run scoreboard players set @n[tag=elevator] level 0
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run scoreboard players set @n[tag=elevator] onLevel 0

kill @n[type=marker,tag=warhead.elevatorspawnpoint]

kill @s