attribute @s minecraft:movement_speed modifier remove 4567-0-0-1-9
attribute @s minecraft:movement_speed modifier add 4589-0-0-2-0 -0.0275 add_value
execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1

function inventory:hotbar/set {"text":"'HHH You put on the vest and feel encumbered."}

tag @s remove wearing_heavy
tag @s add vest
tag @s add heavyvest
tag @s add can_ii
# say wear!