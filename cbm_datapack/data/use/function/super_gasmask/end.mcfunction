# item replace entity @s weapon.offhand with minecraft:air
item replace entity @s armor.head with minecraft:air
tag @s remove super_gasmask
tag @s remove gasmask
function messages:usual {"text":"You removed the gas mask."}
attribute @s minecraft:movement_speed modifier remove 1488-0-0-0-8

# scoreboard players set @s item_selected 0
scoreboard players set @s used_a 1