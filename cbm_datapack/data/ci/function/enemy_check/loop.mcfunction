scoreboard players add .iteration ci 1

#g stop if hit a block
execute unless block ~ ~ ~ air run return fail
execute positioned ~ ~-1 ~ if entity @n[tag=ci_enemy, tag=!dead, distance=..1.25] run return run function ci:enemy_check/spotted
# execute positioned ~ ~-1 ~ if entity @n[tag=ci_enemy, tag=!dead, distance=..1.25] run tag @s add detected_enemy
# execute positioned ~ ~-1 ~ if entity @n[tag=ci_enemy, tag=!dead, distance=..1.25] if run playsound cb:ci.cdkill ambient @a[distance=..24] ~ ~1.75 ~ 3 1 1
# execute positioned ~ ~-1 ~ as @n[tag=ci_enemy, tag=!dead, distance=..1.25] run return run tag @s add detected_by_ci

#g debug
# particle happy_villager

#g proceed if no hinderances
execute if score .iteration ci matches ..17 positioned ^ ^ ^0.66 run function ci:enemy_check/loop