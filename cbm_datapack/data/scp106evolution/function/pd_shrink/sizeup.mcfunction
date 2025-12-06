execute store result storage cb:pds scale int 1 run scoreboard players get @s pd_shrink_scale
scoreboard players add @s pd_shrink_scale 1

execute if score @s pd_shrink_scale = max pd_shrink_scale run tag @s remove up

$attribute @s scale base set 0.$(scale)