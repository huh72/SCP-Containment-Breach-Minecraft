scoreboard players add @s pd_shrink_scale 1

execute if score @s pd_shrink_scale = max pd_shrink_scale run tag @s remove resizing


$attribute @s scale base set 0.$(scale)