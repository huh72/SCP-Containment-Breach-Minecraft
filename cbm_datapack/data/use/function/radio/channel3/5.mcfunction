playsound cb:radio.channel3_5 master @s ~ ~ ~ 1 1 1
playsound cb:radio.channel3_5 master @a[distance=0.01..] ~ ~ ~ 1 1 1

scoreboard players operation @s channel3_timer = 5 channel3_timer
tag @s add ch3_5

tag @s remove ch3_1
tag @s remove ch3_2
tag @s remove ch3_3
tag @s remove ch3_4