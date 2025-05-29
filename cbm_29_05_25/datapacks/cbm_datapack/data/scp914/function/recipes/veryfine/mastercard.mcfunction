kill @s
summon armor_stand ~ ~ ~ {Tags:['drop','mastercard','new','input_item'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}

item replace entity @e[tag=new] armor.head with minecraft:paper[custom_model_data=8]
scoreboard players operation @e[tag=new,tag=drop] item_num = max* item_num
scoreboard players add max* item_num 1

tp @e[tag=new] ~15 ~ ~
tag @e remove new