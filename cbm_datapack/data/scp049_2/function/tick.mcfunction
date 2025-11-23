#tp model - guard
execute at @e[type=minecraft:zombie,tag=scp049_2g] run tp @n[tag=aj.scp049_2.root] ~ ~ ~
execute as @e[type=minecraft:zombie,tag=scp049_2g] at @s run data modify entity @n[tag=aj.scp049_2.root] Rotation[0] set from entity @s Rotation[0]

#tp model - class d
execute at @e[type=minecraft:zombie,tag=scp049_2d] run tp @n[tag=aj.scp049_2d.root] ~ ~ ~
execute as @e[type=minecraft:zombie,tag=scp049_2d] at @s run data modify entity @n[tag=aj.scp049_2d.root] Rotation[0] set from entity @s Rotation[0]


#'sub'tick - @s
execute as @e[type=minecraft:zombie,tag=scp049_2] at @s run function scp049_2:subtick

# player slow attribute
scoreboard players remove @a[scores={slow_long=1..}] slow_long 1
attribute @p[scores={slow_long=0}] movement_speed modifier remove 1488-0-0-0-2
