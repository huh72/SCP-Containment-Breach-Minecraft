tag @s remove dr.not_rendered
execute if entity @s[tag=r0] rotated 0 0 run function animated_java:door0/summon with storage aj:temp
execute if entity @s[tag=r0] run setblock ~-1 ~1 ~ minecraft:lightning_rod
execute if entity @s[tag=r0] run setblock ~-1 ~ ~ minecraft:lightning_rod
execute if entity @s[tag=r0] run setblock ~ ~1 ~ minecraft:lightning_rod
execute if entity @s[tag=r0] run setblock ~ ~ ~ minecraft:lightning_rod

execute if entity @s[tag=r1] rotated 90 0 run function animated_java:door0/summon with storage aj:temp
execute if entity @s[tag=r1] run setblock ~ ~1 ~-1 minecraft:lightning_rod
execute if entity @s[tag=r1] run setblock ~ ~ ~-1 minecraft:lightning_rod
execute if entity @s[tag=r1] run setblock ~ ~1 ~ minecraft:lightning_rod
execute if entity @s[tag=r1] run setblock ~ ~ ~ minecraft:lightning_rod

say spawn doors!


###!
scoreboard players set @e[tag=door_marker] door_interact_cd 0
tag @e[tag=door_marker,tag=!card,tag=!sc] add 079horror 