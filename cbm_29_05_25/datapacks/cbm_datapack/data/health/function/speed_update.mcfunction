attribute @s[scores={bleeding=0}] generic.movement_speed modifier remove 1337-0-0-1-3
attribute @s[scores={bleeding=0}] generic.movement_speed modifier remove 1337-0-0-4-5
attribute @s[scores={bleeding=0}] generic.movement_speed modifier remove 1337-0-0-6-8
attribute @s[scores={bleeding=0}] generic.movement_speed modifier remove 1337-0-0-9-10

execute unless score @s bleeding matches 1..3 run attribute @s generic.movement_speed modifier remove 1337-0-0-1-3
execute unless score @s bleeding matches 4..6 run attribute @s generic.movement_speed modifier remove 1337-0-0-4-5
execute unless score @s bleeding matches 6..8 run attribute @s generic.movement_speed modifier remove 1337-0-0-6-8
execute unless score @s bleeding matches 9..10 run attribute @s generic.movement_speed modifier remove 1337-0-0-9-10

attribute @s[scores={bleeding=1..3}] generic.movement_speed modifier add 1337-0-0-1-3 -0.005 add_value
attribute @s[scores={bleeding=4..5}] generic.movement_speed modifier add 1337-0-0-4-5 -0.0075 add_value
attribute @s[scores={bleeding=6..8}] generic.movement_speed modifier add 1337-0-0-6-8 -0.01 add_value
attribute @s[scores={bleeding=9..10}] generic.movement_speed modifier add 1337-0-0-9-10 -0.03 add_value