tag @s add uninteractibale
scoreboard players operation .0 106chamber.lever.cd = .max0 106chamber.lever.cd
scoreboard players set .magnet event106 1

execute at @n[tag=106.playsoundpoint] run playsound cb:scp106.event.magnetup ambient @a[distance=..64] ~ ~3 ~ 4 1 1