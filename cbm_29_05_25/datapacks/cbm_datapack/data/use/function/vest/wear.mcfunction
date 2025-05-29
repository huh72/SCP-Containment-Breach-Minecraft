attribute @s minecraft:generic.movement_speed modifier remove 1488-0-0-1-9
attribute @s minecraft:generic.movement_speed modifier add 1488-0-0-2-0 -0.01 add_value
execute at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1

function messages:usual {"text":"You put on the vest and feel slightly encumbered."}

tag @s add vest
tag @s add can_ii
say wear!