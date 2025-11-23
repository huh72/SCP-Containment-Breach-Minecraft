execute unless block ~ ~ ~ minecraft:air run return run scoreboard players set air v 1
execute as @r if predicate generation:10 run particle composter ~ ~-0.25 ~ 0 0 0 0 1 force @a
scoreboard players add dist* air 1

execute positioned ~ ~-1.5 ~ as @p[distance=..1,tag=!checked] run function scp173:player_raycast/calc_dist
