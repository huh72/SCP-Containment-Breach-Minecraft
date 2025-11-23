execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
scoreboard players set @s 1499_ambient 40
scoreboard players operation @s 1499_idle = max* 1499_idle
item replace entity @s armor.feet with iron_boots
tag @s add scp1499
# function messages:usual {"text":"You put on the {/item/:/scp1488/} and you can breathe easier."}
scoreboard players set @s used_a 1

execute as @s at @s run function use:scp1499/save_point

function use:scp1499/enter
schedule function use:scp1499/stopdragon 5t replace