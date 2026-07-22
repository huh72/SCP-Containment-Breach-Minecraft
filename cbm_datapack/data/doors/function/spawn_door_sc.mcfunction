tag @s remove dr.not_rendered
tag @s add closed

execute if entity @s[tag=black] run scoreboard players set @s scanner_value 1
execute if entity @s[tag=white] run scoreboard players set @s scanner_value 2

execute if entity @s[tag=r0] rotated 0 0 run function animated_java:door0_sc/summon with storage aj:temp
execute if entity @s[tag=r0] run setblock ~-1 ~1 ~ minecraft:lightning_rod
execute if entity @s[tag=r0] run setblock ~-1 ~ ~ minecraft:lightning_rod
execute if entity @s[tag=r0] run setblock ~ ~1 ~ minecraft:lightning_rod
execute if entity @s[tag=r0] run setblock ~ ~ ~ minecraft:lightning_rod

execute if entity @s[tag=r1] rotated 90 0 run function animated_java:door0_sc/summon with storage aj:temp
execute if entity @s[tag=r1] run setblock ~ ~1 ~-1 minecraft:lightning_rod
execute if entity @s[tag=r1] run setblock ~ ~ ~-1 minecraft:lightning_rod
execute if entity @s[tag=r1] run setblock ~ ~1 ~ minecraft:lightning_rod
execute if entity @s[tag=r1] run setblock ~ ~ ~ minecraft:lightning_rod

scoreboard players set @s door_interact_cd 0
scoreboard players set @s card_interact_cd 0

execute unless score @s scanner_value matches 1..2 run tellraw @a [{"text":"[ ! ] ","color":"white"},{"text":"One LCZ scanner door waa not initialized: access_level was not set","color":"red"}]