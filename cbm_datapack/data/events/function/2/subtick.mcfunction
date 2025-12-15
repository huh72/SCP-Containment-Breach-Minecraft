execute if entity @s[y_rotation=-90] run function events:2/-90
execute if entity @s[y_rotation=90] run function events:2/90
execute if entity @s[y_rotation=-180] run function events:2/-180

#visualizing dx, dy, dz:
# execute positioned ~ ~ ~-10 run particle soul_fire_flame
# execute positioned ~ ~ ~-10 positioned ~9 ~ ~20 run particle flame