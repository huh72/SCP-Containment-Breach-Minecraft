scoreboard players remove @s pd_shrink_scale 1

execute if score @s pd_shrink_scale = max pd_shrink_scale run kill @s


$attribute @s scale base set 0.$(scale)