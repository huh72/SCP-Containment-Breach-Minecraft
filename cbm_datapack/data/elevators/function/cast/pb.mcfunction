execute unless block ~ ~ ~ minecraft:air run scoreboard players set air* var 0
# particle composter ~ ~-0.3 ~

# $say $(dist)

# execute positioned ~-0.001 ~-0.001 ~-0.001 at @e[dx=0,tag=door] positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=door] as @e[dx=0,tag=door] run tag @s add reachable
# execute positioned ~-0.001 ~-0.001 ~-0.001 at @e[dx=0,tag=door] positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=door] run tag @s add door_caster

execute positioned ~ ~ ~ run tag @e[tag=door,distance=..0.25] add reachable
execute positioned ~ ~ ~ if entity @e[tag=door,distance=..0.25] run tag @s add door_caster
# execute positioned ^ ^ ^2 run particle cloud

# $execute positioned ^ ^ ^$(dist) positioned ~-0.1 ~-0.1 ~-0.1 at @e[dx=0,tag=door] positioned ~-0.1 ~-0.1 ~-0.1 if entity @e[dx=0,tag=door] as @e[dx=0,tag=door] run tag @s add reachable
# $execute positioned ^ ^ ^$(dist) positioned ~-0.1 ~-0.1 ~-0.1 at @e[dx=0,tag=door] positioned ~-0.1 ~-0.1 ~-0.1 if entity @e[dx=0,tag=door] run tag @s add door_caster

# execute positioned ~ ~ ~ run particle angry_villager

execute store result score @s _door_global_num run scoreboard players get @e[tag=reachable,tag=door,limit=1] door_global_num

execute as @e[tag=door] at @s if score @s door_global_num = @a[tag=door_caster,limit=1] _door_global_num run tag @s add look_on_by_player

# execute if entity @s[tag=door_caster] at @e[tag=look_on_by_player] run particle angry_villager ~ ~ ~ 0.2 0.2 0.2 0 3


