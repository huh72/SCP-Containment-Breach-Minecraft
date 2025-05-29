$tp @s ~ ~ ~ ~ ~$(rot)
#
scoreboard players operation @s itt_cd = max itt_cd

execute unless block ~ ~-0.5 ~ air if score @s bounce_cd matches 0 run function grenades:slow_cast/hit_floor
execute unless block ^ ^ ^1 air if score @s bounce_cd matches 0 run function grenades:slow_cast/hit_wall
execute unless block ^-0.5 ^ ^ air if score @s bounce_cd matches 0 run function grenades:slow_cast/hit_wall
execute unless block ^0.5 ^ ^ air if score @s bounce_cd matches 0 run function grenades:slow_cast/hit_wall


scoreboard players remove @s itt 1
execute if score @s itt matches 0 run function grenades:slow_cast/despawn
# execute as @s at @s anchored eyes positioned ^ ^ ^1 if score @s itt matches 1.. if score @s itt_cd matches 0 run function grenades:slow_cast/move