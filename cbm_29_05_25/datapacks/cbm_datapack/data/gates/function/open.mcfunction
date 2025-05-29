say open!
playsound cb:gate.open ambient @a ~ ~100 ~ 10 1 1

tag @s remove close
tag @s add open

scoreboard players operation @s gate_open_speed = max* gate_open_speed
scoreboard players operation @s gate_interact_cd = max* gate_interact_cd
