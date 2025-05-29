
#particle composter ~ ~-0.3 ~
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[dx=0,tag=gate] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[dx=0,tag=gate] run tag @s add g_reachable
execute positioned ~-0.1 ~-0.1 ~-0.1 at @e[dx=0,tag=gate] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[dx=0,tag=gate] run tag @s add gate_caster
execute store result score @s _gate_global_num run scoreboard players get @e[tag=g_reachable,tag=gate,limit=1] gate_global_num

execute as @e[tag=gate] at @s if score @s gate_global_num = @a[tag=gate_caster,limit=1] _gate_global_num run tag @s add g_look_on_by_player
