#appearing conditions
execute if score 106 appear_timer matches 0.. if score 106 appear_timer < max appear_timer run function scp106:appear/appearing
execute if score 106 appear_timer = max appear_timer run function scp106:appear/get_appeared

##&7movement & chase
execute as @e[type=minecraft:armor_stand,tag=hunting] at @s if block ~ ~ ~ air run function scp106:move {"speed":"0.175"}
#slowed
execute as @e[type=minecraft:armor_stand,tag=hunting] at @s unless block ~ ~ ~ air run function scp106:move {"speed":"0.1"}
# hunting
scoreboard players add @e[type=minecraft:armor_stand,tag=hunting] hunting 1
execute as @e[type=minecraft:armor_stand,tag=hunting] at @s if score @s hunting > max hunting run function scp106:disappear/disappear


#model & rotation
execute as @n[type=minecraft:armor_stand,tag=scp106] at @s run tp @n[tag=aj.scp106.root] ~ ~ ~
data modify entity @n[tag=aj.scp106.root] Rotation[0] set from entity @n[type=minecraft:armor_stand,tag=scp106] Rotation[0]


#disappearing conditions
execute if score 106 disappear_timer matches 0.. if score 106 disappear_timer < max disappear_timer run function scp106:disappear/disappearing
execute if score 106 disappear_timer = max disappear_timer run function scp106:disappear/get_disappeared

#hit + hit cd
execute if score 106 106hit_cd matches 1.. run scoreboard players remove 106 106hit_cd 1
execute as @e[type=minecraft:armor_stand,tag=hunting] at @s as @p[distance=..1] if score 106 106hit_cd matches 0 anchored eyes positioned ^ ^ ^0.5 run function scp106:hit/hit

#fall physics
execute as @e[type=minecraft:armor_stand,tag=hunting] at @s if block ~ ~-0.15 ~ air run tp @s ~ ~-0.15 ~


### pd shrink resize animation
#спавн - скеил = 0.01(=минимум) *= переменная скеил = 1
#переменная скеил +1 = 2, переписывается в сторедж скеил как 0.02/2
#передается в функцию, где скеил +1
execute as @e[type=minecraft:armor_stand,tag=ps] at @s store result storage minecraft:pd_shrink scale int 1 run scoreboard players get @s pd_shrink_scale
execute as @e[type=minecraft:armor_stand,tag=ps] at @s if score @s pd_shrink_scale < max pd_shrink_scale run function scp106:pd_shrink/resize with storage minecraft:pd_shrink


#breath 106
execute as @e[type=minecraft:armor_stand,tag=scp106] at @s if score 106 breath_cd < max breath_cd run scoreboard players add 106 breath_cd 1
execute as @e[type=minecraft:armor_stand,tag=scp106] at @s if score 106 breath_cd = max breath_cd run function scp106:breath

#laugh 106
execute if entity @n[type=minecraft:armor_stand,tag=scp106,tag=hunting] run scoreboard players add 106 laugh_cd 1
execute as @n[type=minecraft:armor_stand,tag=scp106,tag=hunting] at @s if score 106 laugh_cd = max laugh_cd run function scp106:laugh

#summon scp106 using a shrink
execute unless entity @n[type=minecraft:armor_stand,tag=hunting] if score 106 step_on_shrink_cd matches 1.. run scoreboard players remove 106 step_on_shrink_cd 1
#
execute as @e[type=minecraft:armor_stand,tag=pd_shrink,tag=active] at @s if entity @p[distance=..1] unless entity @n[tag=hunting] if score 106 step_on_shrink_cd matches 0 run scoreboard players add @s step_on_shrink 1
execute as @e[type=minecraft:armor_stand,tag=pd_shrink,tag=active] at @s if score @s step_on_shrink = max step_on_shrink run function scp106:pd_shrink/disactive

#walls
# execute if score 106 wall_cd matches 1.. run scoreboard players remove 106 wall_cd 1
# #
# # execute as @e[tag=scp106,tag=hunting,tag=!in_blocks] at @s positioned ^ ^ ^0.5 positioned ~ ~1 ~ anchored eyes if score 106 wall_cd matches ..0 run function scp106:wall/solid

# execute as @e[tag=scp106,tag=hunting,tag=!in_blocks] at @s positioned ^ ^ ^0.5 positioned ~ ~1 ~ anchored eyes run function scp106:wall/solid

# execute as @e[tag=scp106,tag=hunting,tag=in_blocks] at @s positioned ^ ^ ^0.5 positioned ~ ~1 ~ anchored eyes run function scp106:wall/air
