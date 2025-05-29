attribute @s minecraft:generic.movement_speed modifier add 1488-0-0-0-9 -1 add_value
scoreboard players operation @s use_timer = max_aidkit0* use_timer
execute at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
function use:remove_item

tag @s remove can_ii