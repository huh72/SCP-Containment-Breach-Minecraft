
say open!
tag @s remove close
tag @s add open
tag @e[tag=door,tag=main,distance=..6,tag=look_on_by_player] remove close
tag @e[tag=door,tag=main,distance=..6,tag=look_on_by_player] add open

playsound cb:door.open ambient @a[distance=..16] ~ ~ ~ 1 1 1
scoreboard players operation @s door_open_speed = max* door_open_speed
scoreboard players operation @s door_interact_cd = max* door_interact_cd

scoreboard players operation @e[tag=door,tag=main,distance=..6,tag=look_on_by_player] door_open_speed = max* door_open_speed
scoreboard players operation @e[tag=door,tag=main,distance=..6,tag=look_on_by_player] door_interact_cd = max* door_interact_cd
