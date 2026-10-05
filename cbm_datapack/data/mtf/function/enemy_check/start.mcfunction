tag @e remove detected_by_mtf
tag @s remove detected_enemy

scoreboard players set .iteration mtf 0
scoreboard players operation look_check_cd mtf = _look_check_cd mtf

function mtf:enemy_check/loop

execute if entity @s[tag=!detected_enemy] run scoreboard players set anger_time mtf 0