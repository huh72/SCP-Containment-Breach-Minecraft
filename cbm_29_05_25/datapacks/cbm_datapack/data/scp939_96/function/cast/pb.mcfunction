
execute unless block ~ ~ ~ minecraft:air run scoreboard players set h* air 1
#particle composter ~ ~-0.25 ~ 0 0 0 0 1 force @a
scoreboard players add dist* air 1

scoreboard players set player_can_see_939_53* var 0
execute positioned ~-0.1 ~-0.1 ~-0.1 as @p[dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @p[dx=0] run scoreboard players set player_can_see_939_53* var 1
execute positioned ~-0.1 ~-0.1 ~-0.1 as @p[dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @p[dx=0] run scoreboard players set h* air 1