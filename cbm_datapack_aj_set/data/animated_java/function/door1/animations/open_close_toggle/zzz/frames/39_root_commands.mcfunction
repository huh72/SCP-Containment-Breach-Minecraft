execute as @n[tag=door_marker_hcz,tag=r0] at @s run setblock ~-1 ~1 ~ minecraft:lightning_rod[facing=east]
execute as @n[tag=door_marker_hcz,tag=r0] at @s run setblock ~-1 ~ ~ minecraft:lightning_rod[facing=east]
execute as @n[tag=door_marker_hcz,tag=r0] at @s run setblock ~ ~1 ~ minecraft:lightning_rod[facing=east]
execute as @n[tag=door_marker_hcz,tag=r0] at @s run setblock ~ ~ ~ minecraft:lightning_rod[facing=east]
execute as @n[tag=door_marker_hcz,tag=r1] at @s run setblock ~ ~1 ~-1 minecraft:lightning_rod[facing=north]
execute as @n[tag=door_marker_hcz,tag=r1] at @s run setblock ~ ~ ~-1 minecraft:lightning_rod[facing=north]
execute as @n[tag=door_marker_hcz,tag=r1] at @s run setblock ~ ~1 ~ minecraft:lightning_rod[facing=north]
execute as @n[tag=door_marker_hcz,tag=r1] at @s run setblock ~ ~ ~ minecraft:lightning_rod[facing=north]
execute if entity @n[tag=door_marker_hcz,tag=r0] as @a[distance=..0.5] run tp @s ~ ~ ~0.5
execute if entity @n[tag=door_marker_hcz,tag=r0] positioned ~0.5 ~ ~ as @a[distance=..0.5] run tp @s ~ ~ ~0.5
execute if entity @n[tag=door_marker_hcz,tag=r0] positioned ~-0.5 ~ ~ as @a[distance=..0.5] run tp @s ~ ~ ~0.5
execute if entity @n[tag=door_marker_hcz,tag=r1] as @a[distance=..0.5] run tp @s ~0.5 ~ ~
execute if entity @n[tag=door_marker_hcz,tag=r1] positioned ~ ~ ~0.5 as @a[distance=..0.5] run tp @s ~0.5 ~ ~
execute if entity @n[tag=door_marker_hcz,tag=r1] positioned ~ ~ ~-0.5 as @a[distance=..0.5] run tp @s ~0.5 ~ ~