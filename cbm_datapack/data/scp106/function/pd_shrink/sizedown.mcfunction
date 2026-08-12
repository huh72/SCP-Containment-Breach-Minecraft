execute store result storage cb:pds scale int 1 run scoreboard players get @s pd_shrink_scale
scoreboard players remove @s pd_shrink_scale 1

execute if score @s pd_shrink_scale matches 20 run kill @s

$attribute @s scale base set 0.$(scale)