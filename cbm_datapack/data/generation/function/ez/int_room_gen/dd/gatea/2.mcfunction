#g gate
execute at @n[tag=gateSpawnpoint] rotated 90 0 run function animated_java:gate/summon with storage aj:temp
tag @s add gate.gateA
kill @n[tag=gateSpawnpoint]
execute at @n[tag=gateSpawnpoint] rotated 90 0 run function animated_java:gate/summon with storage aj:temp

#g elevator
execute at @n[tag=elevatorSpawnpoint] run place template lcz:elevator ~-4 ~-1 ~ counterclockwise_90

#g elevatorDoors
execute at @n[tag=elevatorSpawnpoint] rotated 0 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r1

execute at @n[tag=gateSpawnpoint] as @n[tag=elevatorDoors] at @s run tag @n[tag=gate] add gateNearestToElevatorA
execute at @n[tag=gateSpawnpoint] run tag @n[tag=gate, tag=!gateNearestToElevatorA] add gate.gateA

# setblock ~ ~12 ~ minecraft:oak_sign[rotation=1]{front_text:{messages:['[{"text":"15 (2)}]','[{"text":"15 (2)"}]','[{"text":"15 (2)"}]','[{"text":"15 (2)"}]']}}