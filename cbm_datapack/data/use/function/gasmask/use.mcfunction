execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s weapon.offhand with minecraft:lightning_rod
tag @s add gasmask
function messages:usual {"text":"You put on the gas mask and you can breathe easier."}
attribute @s minecraft:movement_speed modifier add 4567-0-0-0-8 0.005 add_value

particle minecraft:entity_effect{color:[0.996078431372549, 0.9529411764705882, 1, 0.984313725490196],scale:1f} ~ ~ ~ ~ ~ ~ 0 1 force @s

# scoreboard players set @s item_selected 20
scoreboard players set @s used_a 1