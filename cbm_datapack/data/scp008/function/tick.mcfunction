#vars
execute if score 008 scp008smoketimer matches 1.. run scoreboard players remove 008 scp008smoketimer 1

#sound
execute if score 008 scp008smoketimer matches 0 at @n[tag=aj.scp008.root] run function scp008:smoke

#particle
execute at @e[type=item_display,tag=aj.scp008.root] positioned ^0.25 ^ ^0.25 run particle minecraft:effect ~ ~1.65 ~ 0.25 0.5 0.25 0 25 force

# execute at @e[type=item_display,tag=aj.scp008.root] positioned ^ ^ ^1 run particle happy_villager


