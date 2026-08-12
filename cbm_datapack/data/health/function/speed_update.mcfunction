attribute @s movement_speed modifier remove 0000-0-0-0-4

execute if score @s bleeding matches 0 run function shader_control:effects/blur/set {"value":"0"}
execute if score @s bleeding matches 1 run function shader_control:effects/blur/set {"value":"0.1"}
execute if score @s bleeding matches 2 run function shader_control:effects/blur/set {"value":"0.2"}
execute if score @s bleeding matches 3 run function shader_control:effects/blur/set {"value":"0.3"}
execute if score @s bleeding matches 4 run function shader_control:effects/blur/set {"value":"0.4"}
execute if score @s bleeding matches 5 run function shader_control:effects/blur/set {"value":"0.5"}
execute if score @s bleeding matches 6 run function shader_control:effects/blur/set {"value":"0.6"}
execute if score @s bleeding matches 7 run function shader_control:effects/blur/set {"value":"0.7"}
execute if score @s bleeding matches 8 run function shader_control:effects/blur/set {"value":"0.8"}
execute if score @s bleeding matches 9 run function shader_control:effects/blur/set {"value":"0.9"}
execute if score @s bleeding matches 10 run function shader_control:effects/blur/set {"value":"1"}

attribute @s[scores={bleeding=1..2}] movement_speed modifier add 0000-0-0-0-4 -0.0025 add_value
attribute @s[scores={bleeding=3..4}] movement_speed modifier add 0000-0-0-0-4 -0.005 add_value
attribute @s[scores={bleeding=5..6}] movement_speed modifier add 0000-0-0-0-4 -0.008 add_value
attribute @s[scores={bleeding=7..9}] movement_speed modifier add 0000-0-0-0-4 -0.0115 add_value
attribute @s[scores={bleeding=10}] movement_speed modifier add 0000-0-0-0-4 -0.035 add_value