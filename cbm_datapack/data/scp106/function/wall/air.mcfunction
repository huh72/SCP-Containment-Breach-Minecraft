scoreboard players set is_air wall_cd 0

execute if block ~ ~1 ~ air run scoreboard players add is_air wall_cd 1
execute if block ~ ~ ~ air run scoreboard players add is_air wall_cd 1

execute if score is_air wall_cd matches 1..2 run tag @s remove in_blocks

execute if score is_air wall_cd matches 1..2 run say tag remove!

execute if score is_air wall_cd matches 1..2 run function scp106:wall/spawn