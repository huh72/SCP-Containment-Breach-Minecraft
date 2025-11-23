execute unless block ~ ~ ~ air run scoreboard players set air v 1

execute if entity @a[dy=0] run tag @s add player_on_sight
execute as @a[dy=0] run scoreboard players add @s player_seen 1
execute as @a[dy=0] run tag @s add seen
# particle wax_off