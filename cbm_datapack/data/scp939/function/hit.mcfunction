execute at @n[type=minecraft:wandering_trader,tag=scp939] run tp @n[type=minecraft:wandering_trader,tag=scp939] ^ ^ ^0.25 facing entity @s
scoreboard players operation @n[type=minecraft:wandering_trader,tag=scp939] hit_cd = max* hit_cd
execute as @n[tag=aj.scp939.root] run function animated_java:scp939/animations/attack/play
effect give @n[type=minecraft:wandering_trader,tag=scp939] slowness 1 5 true
execute if predicate scp939:40 run scoreboard players add @s[tag=!vest] bleeding 1

playsound cb:d9341.damage3 ambient @s ~ ~ ~ 2 1 1
playsound cb:d9341.damage3 ambient @a[distance=0.01..24] ~ ~ ~ 1.25 1 1

execute store result score scp939 damage run random value 35..78 cb:scp939damage
execute store result score scp939DamageReduced0 damage run random value 13..23 cb:scp939damage
execute store result score scp939DamageReduced1 damage run random value 3..11 cb:scp939damage
execute if score scp939 damage >= @s health run tag @s add d_939
scoreboard players operation @s[tag=!vest] health -= scp939 damage

scoreboard players operation @s[tag=basicvest] health -= scp939DamageReduced0 damage
scoreboard players operation @s[tag=heavyvest] health -= scp939DamageReduced1 damage