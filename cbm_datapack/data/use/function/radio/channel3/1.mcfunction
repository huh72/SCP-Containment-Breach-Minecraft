playsound cb:radio.channel3_1 master @s ~ ~ ~ 1 1 1
playsound cb:radio.channel3_1 master @a[distance=0.01..] ~ ~ ~ 1 1 1

say aaa

scoreboard players operation @s channel3_timer = 1 channel3_timer
tag @s add ch3_1

tag @s remove ch3_9