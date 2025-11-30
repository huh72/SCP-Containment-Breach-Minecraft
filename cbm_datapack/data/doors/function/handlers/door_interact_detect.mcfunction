#lcz and ez
execute positioned ~2.5 ~ ~2.5 if entity @n[type=marker,tag=door_marker,tag=r0,distance=..2.25] run tag @s add close_to_door
execute positioned ~-2.5 ~ ~-2.5 if entity @n[type=marker,tag=door_marker,tag=r0,distance=..2.25] run tag @s add close_to_door

execute positioned ~2.5 ~ ~-2.5 if entity @n[type=marker,tag=door_marker,tag=r1,distance=..2.25] run tag @s add close_to_door
execute positioned ~-2.5 ~ ~2.5 if entity @n[type=marker,tag=door_marker,tag=r1,distance=..2.25] run tag @s add close_to_door

#hcz
execute positioned ~2 ~ ~2 if entity @n[type=marker,tag=door_marker_hcz,tag=r0,distance=..2.25] run tag @s add close_to_door_hcz
execute positioned ~-2 ~ ~-2 if entity @n[type=marker,tag=door_marker_hcz,tag=r0,distance=..2.25] run tag @s add close_to_door_hcz

execute positioned ~2 ~ ~-2 if entity @n[type=marker,tag=door_marker_hcz,tag=r1,distance=..2.25] run tag @s add close_to_door_hcz
execute positioned ~-2 ~ ~2 if entity @n[type=marker,tag=door_marker_hcz,tag=r1,distance=..2.25] run tag @s add close_to_door_hcz

#checkpoints
execute positioned ~ ~ ~2.65 if entity @n[type=marker,tag=door_marker_checkpoint,distance=..1.5] run tag @s add close_to_door
execute positioned ~ ~ ~-2.65 if entity @n[type=marker,tag=door_marker_checkpoint,distance=..1.5] run tag @s add close_to_door