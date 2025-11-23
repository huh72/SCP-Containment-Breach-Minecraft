data modify entity @e[type=minecraft:ender_dragon,limit=1] Marker set value 1b
data modify entity @e[type=minecraft:ender_dragon,limit=1] NoAI set value 1b
execute at @e[tag=tp_1499dimansion,limit=1] run tp @a[tag=scp1499] ~ ~ ~
execute at @a[tag=scp1499] run playsound cb:scp1499.enter ambient @a[tag=scp1499] ~ ~ ~ 0.75