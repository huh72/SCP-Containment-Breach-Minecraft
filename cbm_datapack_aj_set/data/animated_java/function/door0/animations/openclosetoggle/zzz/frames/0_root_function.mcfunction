playsound cb:door.open ambient @a[distance=..24] ~ ~ ~ 1 1 1

tag @n[tag=door_marker] add opened
tag @n[tag=door_marker] remove closed
scoreboard players operation @n[tag=door_marker,tag=!uninteractibale] door_interact_cd = max door_interact_cd


execute as @n[tag=door_marker,tag=r0,distance=..1] at @s run setblock ~-1 ~1 ~ minecraft:lightning_rod[facing=east]
execute as @n[tag=door_marker,tag=r0,distance=..1] at @s run setblock ~-1 ~ ~ minecraft:lightning_rod[facing=east]
execute as @n[tag=door_marker,tag=r0,distance=..1] at @s run setblock ~ ~1 ~ minecraft:lightning_rod[facing=east]
execute as @n[tag=door_marker,tag=r0,distance=..1] at @s run setblock ~ ~ ~ minecraft:lightning_rod[facing=east]
execute as @n[tag=door_marker,tag=r1,distance=..1] at @s run setblock ~ ~1 ~-1 minecraft:lightning_rod[facing=north]
execute as @n[tag=door_marker,tag=r1,distance=..1] at @s unless block ~ ~ ~-1 #minecraft:slabs run setblock ~ ~ ~-1 minecraft:lightning_rod[facing=north]
execute as @n[tag=door_marker,tag=r1,distance=..1] at @s run setblock ~ ~1 ~ minecraft:lightning_rod[facing=north]
execute as @n[tag=door_marker,tag=r1,distance=..1] at @s unless block ~ ~ ~ #minecraft:slabs run setblock ~ ~ ~ minecraft:lightning_rod[facing=north]


execute if entity @n[tag=door_marker,tag=r0] as @a[distance=..0.5] run tp @s ~ ~ ~0.5
execute if entity @n[tag=door_marker,tag=r0] positioned ~0.5 ~ ~ as @a[distance=..0.5] run tp @s ~ ~ ~0.5
execute if entity @n[tag=door_marker,tag=r0] positioned ~-0.5 ~ ~ as @a[distance=..0.5] run tp @s ~ ~ ~0.5
execute if entity @n[tag=door_marker,tag=r1] as @a[distance=..0.5] run tp @s ~0.5 ~ ~
execute if entity @n[tag=door_marker,tag=r1] positioned ~ ~ ~0.5 as @a[distance=..0.5] run tp @s ~0.5 ~ ~
execute if entity @n[tag=door_marker,tag=r1] positioned ~ ~ ~-0.5 as @a[distance=..0.5] run tp @s ~0.5 ~ ~

#call event 0's init func
execute as @n[tag=door_marker] at @s if entity @s[tag=event0] run function events:0/init
