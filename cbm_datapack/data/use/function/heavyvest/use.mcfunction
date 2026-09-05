attribute @s minecraft:movement_speed modifier add 4567-0-0-1-9 -1 add_value
scoreboard players operation @s wear_timer = max_vest* wear_timer
execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1

function inventory:hotbar/set {"text":"'You put on a bulletproof vest."}


tag @s add wearing_heavy
tag @s remove can_ii