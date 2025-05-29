# say close!
playsound cb:gate.close ambient @a ~ ~100 ~ 10 1 1

tag @s remove open
tag @s add close
 
scoreboard players operation @s gate_close_speed = max* gate_close_speed
scoreboard players operation @s gate_interact_cd = max* gate_interact_cd
