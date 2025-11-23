attribute @s minecraft:movement_speed modifier add 1488-0-0-1-9 -1 add_value
scoreboard players operation @s wear_timer = max_vest* wear_timer
execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1

tag @s remove can_ii