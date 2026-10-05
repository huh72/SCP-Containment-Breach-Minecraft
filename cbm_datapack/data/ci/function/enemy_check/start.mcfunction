tag @e remove detected_by_ci
tag @s remove detected_enemy

scoreboard players set .iteration ci 0
scoreboard players operation look_check_cd ci = _look_check_cd ci

function ci:enemy_check/loop

execute if entity @s[tag=!detected_enemy] run scoreboard players set anger_time ci 0