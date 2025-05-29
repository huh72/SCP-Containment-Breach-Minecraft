execute unless block ~ ~ ~ air run scoreboard players set 531 v 1

execute positioned ~ ~ ~ if entity @a[dy=0] run tag @s add player_on_sight
execute positioned ~ ~ ~ as @a[dy=0] at @s run scoreboard players add @s player_seen 1
execute positioned ~ ~ ~ as @a[dy=0] at @s run tag @s add seen
particle wax_off