
# door interaction timers
scoreboard players remove @e[scores={gate_open_speed=1..}] gate_open_speed 1
scoreboard players remove @e[scores={gate_close_speed=1..}] gate_close_speed 1
scoreboard players remove @e[scores={gate_interact_cd=1..}] gate_interact_cd 1

#states / frames
#open
#execute as @e[tag=gate,tag=open] at @s at @e[tag=gate_origin] if score @e[tag=gate,tag=open,limit=1] door_open_speed matches 20 run function gates:frames/0_o
#execute as @e[tag=gate,tag=open] at @s at @e[tag=gate_origin] if score @e[tag=gate,tag=open,limit=1] door_open_speed matches 40 run function gates:frames/1_o
#execute as @e[tag=gate,tag=open] at @s at @e[tag=gate_origin] if score @e[tag=gate,tag=open,limit=1] door_open_speed matches 60 run function gates:frames/2_o

execute if score @e[tag=gate,limit=1] gate_open_speed matches 40 as @e[tag=gate_origin] at @s run function gates:frames/0_o
execute if score @e[tag=gate,limit=1] gate_open_speed matches 20 as @e[tag=gate_origin] at @s run function gates:frames/1_o
execute if score @e[tag=gate,limit=1] gate_open_speed matches 1 as @e[tag=gate_origin] at @s run function gates:frames/2_o

execute if score @e[tag=gate,limit=1] gate_close_speed matches 50 as @e[tag=gate_origin] at @s run function gates:frames/0_c
execute if score @e[tag=gate,limit=1] gate_close_speed matches 30 as @e[tag=gate_origin] at @s run function gates:frames/1_c
execute if score @e[tag=gate,limit=1] gate_close_speed matches 5 as @e[tag=gate_origin] at @s run function gates:frames/2_c
execute if score @e[tag=gate,limit=1] gate_close_speed matches 5 as @e[tag=gate_origin] at @s run particle minecraft:dust_plume ^ ^ ^-3.5 0 2 0 0.05 50 force


#execute as @e[tag=gate,tag=close] at @s if score @s door_close_speed matches 10 run function doors:frames/1

#cast
execute as @a[tag=player] at @s anchored eyes run function gates:cast/player
#from main door controller
#execute as @e[tag=main,tag=gate] at @s anchored eyes positioned ^ ^ ^-4.25 run function doors:cast/pbm


# interact detection
#execute as @e[tag=door,tag=close,tag=main] at @s on attacker run execute as @e[tag=door,tag=reachable] at @s if score @s door_global_num = looking_at_door* door_global_num if score @s door_interact_cd matches 0 anchored eyes positioned ~ ~ ~ run function doors:open
#execute as @e[tag=door,tag=open,tag=main] at @s on attacker run execute as @e[tag=door,tag=reachable] at @s if score @s door_global_num = looking_at_door* door_global_num if score @s door_interact_cd matches 0 anchored eyes positioned ~ ~ ~ run function doors:close
#execute as @e[tag=door] run data remove entity @s attack


#execute as @e[tag=door,tag=close,tag=main] at @s on attacker run say open!


#execute at @a[scores={lc=1}] run say 1
#execute as @e[tag=look_on_by_player] at @s run particle minecraft:angry_villager ~ ~ ~ 0.5 0.5 0.5 0 10 force

#execute as @e[tag=door,tag=close,tag=main] as @e[tag=door,tag=reachable] at @s if score @s door_global_num = looking_at_door* door_global_num if score @s door_interact_cd matches 0 anchored eyes positioned ~ ~ ~ run function doors:open
#execute as @e[tag=door,tag=open,tag=main] as @e[tag=door,tag=reachable] at @s if score @s door_global_num = looking_at_door* door_global_num if score @s door_interact_cd matches 0 anchored eyes positioned ~ ~ ~ run function doors:close
#execute as @e[tag=door,tag=close,tag=sec] as @e[tag=door,tag=reachable] at @s if score @s door_interact_cd matches 0 anchored eyes positioned ~ ~ ~ run function doors:open_sec
#execute as @e[tag=door,tag=open,tag=sec] as @e[tag=door,tag=reachable] at @s if score @s door_interact_cd matches 0 anchored eyes positioned ~ ~ ~ run function doors:close_sec

#execute as @e[tag=door,tag=main,tag=close] if score @p lc matches 1 if score @s door_global_num = looking_at_door* door_global_num if score @s door_interact_cd matches 0 anchored eyes positioned ~ ~ ~ run function doors:open
#execute as @e[tag=door,tag=main,tag=open] if score @p lc matches 1 if score @s door_global_num = looking_at_door* door_global_num if score @s door_interact_cd matches 0 anchored eyes positioned ~ ~ ~ run function doors:close

execute if score @p right_click matches 1 as @e[tag=g_look_on_by_player,limit=1] at @s if score @s[tag=close] gate_interact_cd matches 0 positioned ~ ~ ~ anchored eyes run function gates:open
execute if score @p right_click matches 1 as @e[tag=g_look_on_by_player,limit=1] at @s if score @s[tag=open] gate_interact_cd matches 0 positioned ~ ~ ~ anchored eyes run function gates:close

# a[tag=gate_caster,limit=1]
# a[tag=gate_caster,limit=1]

scoreboard players set @a right_click 0
tag @e remove g_reachable
tag @a remove gate_caster
tag @e remove g_look_on_by_player

