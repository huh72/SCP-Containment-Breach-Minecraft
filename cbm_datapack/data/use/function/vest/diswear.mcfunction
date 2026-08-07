attribute @s minecraft:movement_speed modifier remove 4567-0-0-1-9


execute at @s run summon armor_stand ~ ~1 ~ {Tags:['drop','new','vest'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
item replace entity @n[type=armor_stand, tag=new] armor.head with minecraft:paper[item_model="cb:vest"]

tag @s remove vest
tag @e remove new
function use:remove_item

# function messages:usual {"text":"You feel much better."}

say drop!

tag @s add can_ii

