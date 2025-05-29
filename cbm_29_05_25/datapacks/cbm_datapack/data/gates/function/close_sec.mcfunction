
# say close!
tag @s remove open
tag @s add close
tag @e[tag=door,tag=main,distance=..6] remove open
tag @e[tag=door,tag=main,distance=..6] add close


playsound cb:door.close ambient @a[distance=..16] ~ ~ ~ 1 1 1
scoreboard players operation @s door_close_speed = max* door_close_speed
scoreboard players operation @s door_interact_cd = max* door_interact_cd
scoreboard players operation @e[tag=door,tag=main,distance=..6] door_close_speed = max* door_close_speed
scoreboard players operation @e[tag=door,tag=main,distance=..6] door_interact_cd = max* door_interact_cd