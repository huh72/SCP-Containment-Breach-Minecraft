
scoreboard players remove @e[tag=scp096,tag=triggered,scores={anger_time=1..}] anger_time 1
scoreboard players remove @e[tag=scp096,tag=triggering,scores={triggering_time=1..}] triggering_time 1
scoreboard players remove @e[tag=scp096,tag=triggered,scores={scream_timer=1..}] scream_timer 1

execute as @e[tag=scp096,tag=triggered,scores={scream_timer=0}] at @s run function scp096:scream

execute as @e[tag=caster096] at @s run function scp096:player_cast/at_player_look_detect
execute as @a at @s run tp @e[tag=caster096] ~ ~2 ~

execute as @e[tag=scp096] at @s run tp @e[tag=096caster] ~ ~2 ~ facing entity @p eyes
execute as @e[tag=caster096] at @s run tp @s ^ ^ ^ facing entity @e[tag=scp096,limit=1]

execute as @e[tag=096caster] at @s run function scp096:cast096/to_player

#execute as @a at @s run function scp173:player_cast/center_cast

execute at @e[tag=scp096,tag=triggered] run function scp096:kill

function scp096:look_detect_x
function scp096:look_detect_y


execute if score look_at_096* rot096x matches 1 if score look_at_096* rot096y matches 1 if score player_can_see_096* var matches 1 as @e[tag=scp096,limit=1,tag=!triggering,tag=!triggered] at @s run function scp096:start_trigger
execute as @e[tag=triggering,scores={triggering_time=0}] at @s run function scp096:trigger 
execute as @e[tag=triggered,scores={anger_time=0}] at @s run function scp096:calm_down



#execute as @a at @s run function scp173:horror

#execute at @e[tag=scp173] if entity @a[distance=..0.5] run function scp173:kill

#execute as @e[tag=scp173] at @s if score @s tp_cd matches 0 if score can_tp* rot matches 0 if score player_can_see_173* var matches 1 if score dist* air <= max* tp run function scp173:tp_en
#execute as @e[tag=scp173] at @s if score @s tp_cd matches 0 if score can_tp* rot matches 1 if score player_can_see_173* var matches 1 if score dist* air <= max* tp if score @p blink matches 1 run function scp173:tp_en

#execute as @e[tag=scp173] at @s if score @s tp_cd matches 0 if score can_tp* rot matches 0 if score player_can_see_173* var matches 1 if score dist* air > max* tp run tp @s ~ ~ ~ facing entity @p
#execute as @e[tag=scp173] at @s if score @s tp_cd matches 0 if score can_tp* rot matches 0 if score player_can_see_173* var matches 1 if score dist* air > max* tp run function scp173:tp_not_en
#execute as @e[tag=scp173] at @s if score @s tp_cd matches 0 if score can_tp* rot matches 1 if score player_can_see_173* var matches 1 if score dist* air > max* tp if score @p blink matches 1 run function scp173:tp_not_en