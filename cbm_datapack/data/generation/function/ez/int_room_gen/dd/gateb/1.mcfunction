# setblock ~ ~12 ~ minecraft:oak_sign[rotation=1]{front_text:{messages:['[{"text":"14 (1)}]','[{"text":"14 (1)"}]','[{"text":"14 (1)"}]','[{"text":"14 (1)"}]']}}

#g gate
execute at @n[tag=gateSpawnpoint] rotated 0 0 run function animated_java:gate/summon with storage aj:temp
tag @s add gate.gateB
kill @n[tag=gateSpawnpoint]
execute at @n[tag=gateSpawnpoint] rotated 0 0 run function animated_java:gate/summon with storage aj:temp

#g elevator

#g elevator doors
execute at @n[tag=elevatorSpawnpoint] rotated 0 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r1

execute at @n[tag=gateSpawnpoint] as @n[tag=elevatorDoors] at @s run tag @n[tag=gate] add gateNearestToElevatorB
execute at @n[tag=gateSpawnpoint] run tag @n[tag=gate, tag=!gateNearestToElevatorB] add gate.gateB