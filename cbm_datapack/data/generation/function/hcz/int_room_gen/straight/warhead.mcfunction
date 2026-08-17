$execute if entity @s[tag=1] positioned ~ ~1 ~6 run place template $(room)0
$execute if entity @s[tag=2] positioned ~6 ~1 ~ run place template $(room)1

#elevator generate
execute at @n[type=marker,tag=warhead.elevatorspawnpoint,tag=r0] run place template hcz:elevator ~3 ~-1 ~1 clockwise_90
execute at @n[type=marker,tag=warhead.elevatorspawnpoint,tag=r1] run place template hcz:elevator ~1 ~-1 ~-4 none

#spwan doors
execute at @n[type=marker,tag=warhead.elevatorspawnpoint,tag=r0] positioned ~ ~ ~0.5 rotated 180 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute at @n[type=marker,tag=warhead.elevatorspawnpoint,tag=r1] positioned ~0.5 ~ ~ rotated 90 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] as @n[type=item_display,tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/play
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run scoreboard players set @n[tag=door_marker] access_level 5

#::: init elevator:::
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run tag @n[tag=elevator] add 0
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run tag @n[tag=elevator] add nuke
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run scoreboard players set @n[tag=elevator] ID 2
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run scoreboard players set @n[tag=elevator] level 0
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run scoreboard players set @n[tag=elevator] onLevel 0
execute at @n[type=marker,tag=warhead.elevatorspawnpoint] run scoreboard players set @n[tag=elevator] moveTime -1

scoreboard players set @n[tag=nuke, tag=1, tag=neverRemove] level 1
scoreboard players set @n[tag=nuke, tag=1, tag=neverRemove] onLevel 0

#sent elevator
execute as @n[tag=elevator, tag=nuke, tag=1] as @n[tag=elevatorDoors] if entity @s[tag=opened] run function animated_java:elevator_doors/animations/openclose/resume

#g lever reset
scoreboard players set .isWarheadEnabled e 1
execute as @n[tag=lever, tag=warhead, tag=down] run function animated_java:lever/animations/switch/resume

kill @n[type=marker,tag=warhead.elevatorspawnpoint]
kill @s