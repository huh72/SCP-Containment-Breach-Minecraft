
scoreboard players remove @e[tag=scp0492,scores={breath=1..}] breath 1
scoreboard players remove @e[tag=scp0492,scores={hit_cd=1..}] hit_cd 1
scoreboard players remove @a[scores={slow_long=1..}] slow_long 1

execute as @e[tag=scp0492,scores={breath=0}] at @s run function scp049_2:breath
execute as @e[tag=scp0492,scores={hit_cd=0}] at @s if entity @p[distance=..1] run function scp049_2:hit
attribute @p[scores={slow_long=0}] generic.movement_speed modifier remove 1488-0-0-0-2
