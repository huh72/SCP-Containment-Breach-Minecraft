

# scoreboard players operation @s pd_shrink_scale /= 10 math
execute store result storage cb:pds scale int 1 run scoreboard players get @s pd_shrink_scale
# scoreboard players operation @s pd_shrink_scale /= 2 math
scoreboard players add @s pd_shrink_scale 1

execute if score @s pd_shrink_scale = max_wall pd_shrink_scale run tag @s remove up

# 0..4
# 0 -> 0, 1 -> 0.01

$attribute @s scale base set $(scale)