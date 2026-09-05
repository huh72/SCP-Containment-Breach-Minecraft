attribute @s minecraft:movement_speed modifier remove 4567-0-0-1-9

execute at @s run summon armor_stand ~ ~1 ~ {Tags:['drop','new','heavyvest'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
item replace entity @n[type=armor_stand, tag=new] armor.head with minecraft:paper[item_model="cb:vest"]

tag @s remove wearing_heavy
tag @s remove vest
tag @s remove heavyvest
tag @e remove new
function use:remove_item

function inventory:hotbar/set {"text":"'You took off a bulletproof vest."}

# say drop!

tag @s add can_ii

