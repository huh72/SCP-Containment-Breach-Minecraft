attribute @s minecraft:movement_speed modifier remove 1488-0-0-1-9


execute at @s run summon armor_stand ~ ~1 ~ {Tags:['drop','new','vest'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
data modify entity @e[type=armor_stand,sort=nearest,limit=1] ArmorItems[3] set from entity @s Item

scoreboard players operation @e[tag=new,tag=drop] item_num = max* item_num
scoreboard players add max* item_num 1

item replace entity @e[tag=new,limit=1] armor.head with minecraft:paper[minecraft:custom_model_data=21]

tag @e remove new


# function messages:usual {"text":"You feel much better."}

tag @s add can_ii
say diswear!

