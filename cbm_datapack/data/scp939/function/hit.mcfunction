execute at @n[type=minecraft:wandering_trader,tag=scp939] run tp @n[type=minecraft:wandering_trader,tag=scp939] ^ ^ ^0.25 facing entity @s
scoreboard players operation @n[type=minecraft:wandering_trader,tag=scp939] hit_cd = max* hit_cd
execute as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/attack/play
effect give @n[type=minecraft:wandering_trader,tag=scp939] slowness 1 5 true
execute if predicate scp939:40 run scoreboard players add @s bleeding 1

playsound cb:d9341.damage3 ambient @s ~ ~ ~ 2 1 1
playsound cb:d9341.damage3 ambient @a[distance=0.01..] ~ ~ ~ 1 1 1

execute store result score scp939 damage run random value 35..78 cb:scp939damage
execute if score scp939 damage >= @s health run tag @s add d_939
scoreboard players operation @s health -= scp939 damage