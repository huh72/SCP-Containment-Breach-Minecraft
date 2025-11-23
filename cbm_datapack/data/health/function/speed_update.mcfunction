attribute @s movement_speed modifier remove 0000-0-0-0-4

attribute @s[scores={bleeding=1..2}] movement_speed modifier add 0000-0-0-0-4 -0.0025 add_value
attribute @s[scores={bleeding=3..4}] movement_speed modifier add 0000-0-0-0-4 -0.005 add_value
attribute @s[scores={bleeding=5..6}] movement_speed modifier add 0000-0-0-0-4 -0.008 add_value
attribute @s[scores={bleeding=7..9}] movement_speed modifier add 0000-0-0-0-4 -0.0115 add_value
attribute @s[scores={bleeding=10}] movement_speed modifier add 0000-0-0-0-4 -0.035 add_value