#
execute as @n[type=minecraft:wandering_trader, tag=scp939_53] at @s run function scp939:53/tick
execute as @n[type=minecraft:wandering_trader, tag=scp939_89] at @s run function scp939:89/tick
execute as @n[type=minecraft:wandering_trader, tag=scp939_96] at @s run function scp939:96/tick

# hit
scoreboard players remove @e[type=minecraft:wandering_trader,tag=scp939,scores={hit_cd=1..}] hit_cd 1

# hit func
execute at @e[type=minecraft:wandering_trader,tag=scp939,scores={hit_cd=0}] anchored eyes positioned ^ ^0.25 ^1.5 as @p[distance=..1.25, tag=!dead, tag=!god] at @s run function scp939:hit

# storage939 ambient
execute as @a[tag=!dead] if score @s 939.ambient = .loop 939.ambient run function scp939:ambient
execute as @a[tag=!dead] unless score @s 939.ambient matches -1 run scoreboard players add @s 939.ambient 1