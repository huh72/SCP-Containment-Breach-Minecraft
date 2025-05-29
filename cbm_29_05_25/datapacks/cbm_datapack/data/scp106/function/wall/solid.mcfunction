scoreboard players set is_solid wall_cd 0

execute unless block ~ ~ ~ air run scoreboard players add is_solid wall_cd 1
execute unless block ~ ~-1 ~ air run scoreboard players add is_solid wall_cd 1
execute unless block ~ ~1 ~ air run scoreboard players add is_solid wall_cd 1

execute unless block ~1 ~ ~ air run scoreboard players add is_solid wall_cd 1
execute unless block ~1 ~-1 ~ air run scoreboard players add is_solid wall_cd 1
execute unless block ~1 ~1 ~ air run scoreboard players add is_solid wall_cd 1

execute unless block ~-1 ~ ~ air run scoreboard players add is_solid wall_cd 1
execute unless block ~-1 ~-1 ~ air run scoreboard players add is_solid wall_cd 1
execute unless block ~-1 ~1 ~ air run scoreboard players add is_solid wall_cd 1

# execute unless block ~ ~1 ~ air run scoreboard players add is_solid wall_cd 1
# execute unless block ~ ~ ~ air run scoreboard players add is_solid wall_cd 1

execute if score is_solid wall_cd matches 7.. run tag @s add in_blocks

execute if score is_solid wall_cd matches 7.. run say tag give!

execute if score is_solid wall_cd matches 7.. run function scp106:wall/spawn