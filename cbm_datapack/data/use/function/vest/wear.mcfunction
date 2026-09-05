attribute @s minecraft:movement_speed modifier remove 4567-0-0-1-9
attribute @s minecraft:movement_speed modifier add 4589-0-0-2-0 -0.0175 add_value
execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1

function inventory:hotbar/set {"text":"'You put on the vest and feel slightly encumbered."}

tag @s remove wearing_basic
tag @s add vest
tag @s add basicvest
tag @s add can_ii
# say wear!