execute in minecraft:overworld run tp @s ~ ~64 ~ ~ ~

stopsound @s ambient cb:scp1499.ambient
item replace entity @s armor.feet with air
scoreboard players set @s 1499_ambient 40
tag @s remove scp1499
tag @s add h_scp1499
# function messages:usual {"text":"You removed the {/item/:/scp1488/}."}
# attribute @s minecraft:generic.movement_speed modifier remove 1488-0-0-0-8

# scoreboard players set @s item_selected 0
scoreboard players set @s used_a 1

schedule function use:scp1499/exit 10t replace