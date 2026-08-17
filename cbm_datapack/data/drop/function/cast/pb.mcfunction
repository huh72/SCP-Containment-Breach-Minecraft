execute unless block ~ ~ ~ air run scoreboard players set 820 v 1
execute if entity @n[tag=drop,distance=..0.6] run tag @s add looking_on_item
# execute if score @s right_click_item matches 1 run say u
execute if score @s right_click_item matches 1 as @n[tag=drop,distance=..0.6] run function drop:pick_up