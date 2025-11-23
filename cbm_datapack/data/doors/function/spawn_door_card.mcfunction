tag @s remove dr.not_rendered
tag @s add closed
execute if entity @s[tag=r0] rotated 0 0 run function animated_java:door_card0/summon with storage aj:temp
execute if entity @s[tag=r0] run setblock ~-1 ~1 ~ minecraft:lightning_rod
execute if entity @s[tag=r0] run setblock ~-1 ~ ~ minecraft:lightning_rod
execute if entity @s[tag=r0] run setblock ~ ~1 ~ minecraft:lightning_rod
execute if entity @s[tag=r0] run setblock ~ ~ ~ minecraft:lightning_rod

execute if entity @s[tag=r1] rotated 90 0 run function animated_java:door_card0/summon with storage aj:temp
execute if entity @s[tag=r1] run setblock ~ ~1 ~-1 minecraft:lightning_rod
execute if entity @s[tag=r1] run setblock ~ ~ ~-1 minecraft:lightning_rod
execute if entity @s[tag=r1] run setblock ~ ~1 ~ minecraft:lightning_rod
execute if entity @s[tag=r1] run setblock ~ ~ ~ minecraft:lightning_rod

scoreboard players set @s door_interact_cd 0
scoreboard players set @s card_interact_cd 0
scoreboard players set @s[tag=lvl0] access_level 0
scoreboard players set @s[tag=lvl1] access_level 1
scoreboard players set @s[tag=lvl2] access_level 2
scoreboard players set @s[tag=lvl3] access_level 3
scoreboard players set @s[tag=lvl4] access_level 4
scoreboard players set @s[tag=lvl5] access_level 5