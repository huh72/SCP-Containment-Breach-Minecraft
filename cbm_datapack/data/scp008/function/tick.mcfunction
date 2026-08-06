#vars
execute if score 008 scp008smoketimer matches 1.. run scoreboard players remove 008 scp008smoketimer 1

#sound
execute if score 008 scp008smoketimer matches 0 at @n[tag=aj.scp008.root, tag=opened] run function scp008:smoke

#particle
execute at @e[type=item_display, tag=aj.scp008.root, tag=opened] positioned ^0.25 ^ ^0.25 run particle minecraft:effect ~ ~1.65 ~ 0.25 0.5 0.25 0 25 force

#g close
tag @a remove canClose008
execute at @e[type=item_display, tag=aj.scp008.root, tag=opened] run tag @a[tag=!dead, distance=..1.75] add canClose008
tag @a[tag=canClose008] add looking_on_door

execute as @a[tag=canClose008, scores={right_click_item=1..}] as @n[tag=aj.scp008.root, tag=opened] run function animated_java:scp008/animations/close/play


# execute at @e[type=item_display,tag=aj.scp008.root] positioned ^ ^ ^1 run particle happy_villager


