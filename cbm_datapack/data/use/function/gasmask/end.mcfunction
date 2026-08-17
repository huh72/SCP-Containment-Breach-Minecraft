execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s weapon.offhand with minecraft:air
tag @s remove gasmask
tag @s remove basicgasmask
function inventory:hotbar/set {"text":"'You removed the gas mask."}
attribute @s minecraft:movement_speed modifier remove 4567-0-0-0-8

particle minecraft:entity_effect{color:[0.996078431372549, 0.9529411764705882, 0, 0.984313725490196],scale:1f} ~ ~ ~ ~ ~ ~ 0 1 force @s

# scoreboard players set @s item_selected 0
scoreboard players set @s used_a 1