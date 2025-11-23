attribute @s minecraft:movement_speed modifier add 1488-0-0-1-9 -1 add_value
attribute @s minecraft:movement_speed modifier remove 1488-0-0-2-0
scoreboard players operation @s _wear_timer = max_vest* _wear_timer
execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
function use:remove_item

tag @s remove can_ii