playsound cb:door1.close ambient @a[distance=..24] ~ ~ ~ 1 1 1
tag @n[tag=door_marker_hcz] add closed
tag @n[tag=door_marker_hcz] add proceed
tag @n[tag=door_marker_hcz] remove opened
scoreboard players operation @n[tag=door_marker_hcz] door_interact_cd = max_hcz door_interact_cd