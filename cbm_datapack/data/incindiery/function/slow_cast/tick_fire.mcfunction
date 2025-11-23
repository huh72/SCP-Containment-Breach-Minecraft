scoreboard players operation @s fire_func = max fire_func

scoreboard players operation @a[distance=..1.7] health -= fire_damage health
execute as @a[tag=!dead,distance=..1.7] at @s run particle block{block_state:{Name:redstone_block}} ~ ~1.4 ~ 0 0 0 0 6
scoreboard players add @s fire 1