playsound cb:radio.channel3_7 master @s ~ ~ ~ 1 1 1
playsound cb:radio.channel3_7 master @a[distance=0.01..] ~ ~ ~ 1 1 1

scoreboard players operation @s channel3_timer = 7 channel3_timer
tag @s add ch3_7


tag @s remove ch3_1
tag @s remove ch3_2
tag @s remove ch3_3
tag @s remove ch3_4
tag @s remove ch3_5
tag @s remove ch3_6