execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
item replace entity @s armor.head with minecraft:carved_pumpkin
tag @s add gasmask
function messages:usual {"text":"You put on the gas mask and you can breathe easier."}
# attribute @s minecraft:generic.movement_speed modifier add 1488-0-0-0-8 0.01 add_value


# scoreboard players set @s item_selected 20
scoreboard players set @s used_a 1