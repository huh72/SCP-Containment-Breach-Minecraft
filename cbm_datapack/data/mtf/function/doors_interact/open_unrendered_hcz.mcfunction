execute as @n[tag=door_marker_hcz, tag=r0, distance=..1] at @s run setblock ~-1 ~1 ~ minecraft:air
execute as @n[tag=door_marker_hcz, tag=r0, distance=..1] at @s run setblock ~-1 ~ ~ minecraft:air
execute as @n[tag=door_marker_hcz, tag=r0, distance=..1] at @s run setblock ~ ~1 ~ minecraft:air
execute as @n[tag=door_marker_hcz, tag=r0, distance=..1] at @s run setblock ~ ~ ~ minecraft:air
execute as @n[tag=door_marker_hcz, tag=r1, distance=..1] at @s run setblock ~ ~1 ~-1 minecraft:air
execute as @n[tag=door_marker_hcz, tag=r1, distance=..1] at @s unless block ~ ~ ~ #minecraft:slabs run setblock ~ ~ ~-1 minecraft:air
execute as @n[tag=door_marker_hcz, tag=r1, distance=..1] at @s run setblock ~ ~1 ~ minecraft:air
execute as @n[tag=door_marker_hcz, tag=r1, distance=..1] at @s unless block ~ ~ ~ #minecraft:slabs run setblock ~ ~ ~ minecraft:air

tag @n[tag=door_marker_hcz] add opened
tag @n[tag=door_marker_hcz] remove closed

say open unrendered hcz!