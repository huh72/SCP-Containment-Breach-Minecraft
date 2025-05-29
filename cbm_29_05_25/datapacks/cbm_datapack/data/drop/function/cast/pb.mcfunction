
#particle minecraft:happy_villager ~ ~ ~ 0 0 0 1 1
execute if entity @e[distance=..0.6,type=armor_stand,tag=drop,limit=1] run tag @s add looking_on_item
execute as @e[distance=..0.6,type=armor_stand,tag=drop,limit=1] at @s run tag @s add looked_by_player
execute store result score @p[tag=caster] item_num run scoreboard players get @e[tag=looked_by_player,limit=1] item_num

