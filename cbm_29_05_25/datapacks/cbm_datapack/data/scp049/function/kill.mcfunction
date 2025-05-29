
execute at @s if entity @e[tag=scp049,distance=0..1] run tag @s add d_049
execute at @s if entity @e[tag=scp049,distance=0..1] run function main:death
execute at @s if entity @e[tag=scp049,distance=0..3] run scoreboard players set 049* agr 1
execute at @s if entity @e[tag=scp049,distance=4..] run scoreboard players set 049* agr 0