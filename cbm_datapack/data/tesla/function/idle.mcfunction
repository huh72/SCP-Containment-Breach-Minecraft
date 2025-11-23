playsound cb:tesla.idle ambient @a[distance=..12,tag=!dead] ~ ~4 ~ 0.55 1 1
# stopsound @a[distance=13..] ambient cb:tesla.idle

#work display particle
particle minecraft:wax_off ~ ~5.35 ~ 0 0 0 0 1

scoreboard players operation @s tesla_idle = max* tesla_idle