tag @s add gate_marker
tag @s add closed
tag @s add gate
scoreboard players set @s access_level 0

tag @s[y_rotation=90] add r0
tag @s[y_rotation=270] add r0
tag @s[y_rotation=0] add r1
tag @s[y_rotation=180] add r1

execute if entity @s[tag=r0] run fill ~ ~1 ~ ~ ~2 ~2 minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r0] run fill ~ ~1 ~-1 ~ ~2 ~-3 minecraft:lightning_rod[facing=north]

execute if entity @s[tag=r1] run fill ~ ~1 ~ ~2 ~2 ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r1] run fill ~ ~1 ~ ~-3 ~2 ~ minecraft:lightning_rod[facing=east]