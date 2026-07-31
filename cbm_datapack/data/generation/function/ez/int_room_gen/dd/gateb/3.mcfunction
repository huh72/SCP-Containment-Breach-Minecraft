setblock ~ ~12 ~ minecraft:oak_sign[rotation=1]{front_text:{messages:['[{"text":"16 (3)}]','[{"text":"16 (3)"}]','[{"text":"16 (3)"}]','[{"text":"16 (3)"}]']}}

#g gate
execute at @n[tag=gateSpawnpoint] rotated 0 0 run function animated_java:gate/summon with storage aj:temp
kill @n[tag=gateSpawnpoint]
execute at @n[tag=gateSpawnpoint] rotated 0 0 run function animated_java:gate/summon with storage aj:temp

#g elevator
execute at @n[tag=elevatorSpawnpoint] run place template lcz:elevator ~3 ~-1 ~ clockwise_90

#g elevator doors
execute at @n[tag=elevatorSpawnpoint] rotated 0 0 run function animated_java:elevator_doors/summon with storage aj:temp
execute at @n[tag=elevatorSpawnpoint] run tag @n[tag=elevatorDoors] add r1