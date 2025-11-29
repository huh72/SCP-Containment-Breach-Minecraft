#lcz and ez
execute positioned ~2.5 ~ ~2.5 if entity @n[type=marker,tag=door_marker,tag=r0,distance=..2.25] run tag @s add can_interact_with_door
execute positioned ~-2.5 ~ ~-2.5 if entity @n[type=marker,tag=door_marker,tag=r0,distance=..2.25] run tag @s add can_interact_with_door

execute positioned ~2.5 ~ ~-2.5 if entity @n[type=marker,tag=door_marker,tag=r1,distance=..2.25] run tag @s add can_interact_with_door
execute positioned ~-2.5 ~ ~2.5 if entity @n[type=marker,tag=door_marker,tag=r1,distance=..2.25] run tag @s add can_interact_with_door

execute positioned ~2.5 ~ ~2.5 if entity @n[type=marker,tag=door_marker,tag=r0,distance=..2.25] run tag @s add can_interact_with_door
execute positioned ~-2.5 ~ ~-2.5 if entity @n[type=marker,tag=door_marker,tag=r0,distance=..2.25] run tag @s add can_interact_with_door

execute positioned ~2.5 ~ ~-2.5 if entity @n[type=marker,tag=door_marker,tag=r1,distance=..2.25] run tag @s add can_interact_with_door
execute positioned ~-2.5 ~ ~2.5 if entity @n[type=marker,tag=door_marker,tag=r1,distance=..2.25] run tag @s add can_interact_with_door


#hcz
execute positioned ~2 ~ ~2 if entity @n[type=marker,tag=door_marker_hcz,tag=r0,distance=..2.25] run tag @s add can_interact_with_door
execute positioned ~-2 ~ ~-2 if entity @n[type=marker,tag=door_marker_hcz,tag=r0,distance=..2.25] run tag @s add can_interact_with_door

execute positioned ~2 ~ ~-2 if entity @n[type=marker,tag=door_madoor_marker_hczrker,tag=r1,distance=..2.25] run tag @s add can_interact_with_door
execute positioned ~-2 ~ ~2 if entity @n[type=marker,tag=door_marker_hcz,tag=r1,distance=..2.25] run tag @s add can_interact_with_door

execute positioned ~2 ~ ~2 if entity @n[type=marker,tag=door_marker_hcz,tag=r0,distance=..2.25] run tag @s add can_interact_with_door
execute positioned ~-2 ~ ~-2 if entity @n[type=marker,tag=door_marker_hcz,tag=r0,distance=..2.25] run tag @s add can_interact_with_door

execute positioned ~2 ~ ~-2 if entity @n[type=marker,tag=door_marker_hcz,tag=r1,distance=..2.25] run tag @s add can_interact_with_door
execute positioned ~-2 ~ ~2 if entity @n[type=marker,tag=door_marker_hcz,tag=r1,distance=..2.25] run tag @s add can_interact_with_door


#checkpoints
execute positioned ~ ~ ~2.65 if entity @n[type=marker,tag=door_marker_checkpoint,distance=..1.5] run tag @s add can_interact_with_door
execute positioned ~ ~ ~-2.65 if entity @n[type=marker,tag=door_marker_checkpoint,distance=..1.5] run tag @s add can_interact_with_door