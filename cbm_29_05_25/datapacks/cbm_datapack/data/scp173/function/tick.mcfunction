
scoreboard players remove @e[tag=scp173,scores={tp_cd=1..}] tp_cd 1

function scp173:blink/tick

# execute as @a at @s run function scp173:player_cast/side_casts



execute as @e[tag=caster173] at @s run function scp096:player_cast/at_player_look_detect
execute as @a at @s run tp @e[tag=caster173] ~ ~2 ~

execute as @e[tag=scp173] at @s run tp @e[tag=173caster] ~ ~2 ~ facing entity @p eyes
execute as @e[tag=caster173] at @s run tp @s ^ ^ ^ facing entity @e[tag=scp173,limit=1]

execute as @e[tag=173caster] at @s run function scp173:cast173/to_player

#execute as @a at @s run function scp173:player_cast/center_cast


function scp173:look_detect_x
function scp173:look_detect_y

execute as @a[tag=!dead] at @s run function scp173:horror

execute at @e[tag=scp173] as @a[distance=..0.5,tag=!dead] at @s run function scp173:kill

# execute if score look_at_096* rot096x matches 1 if score look_at_096* rot096y matches 1 if score player_can_see_096* var matches 1 as @e[tag=scp096,limit=1,tag=!triggering,tag=!triggered] at @s run function scp096:start_trigger

# execute as @e[tag=scp173] at @s if score @s tp_cd matches 0 if score look_at_173* rot173x matches 0 if score look_at_173* rot173y matches 0 if score player_can_see_096* var matches 1 if score dist* air <= max* tp run function scp173:tp_en
# execute as @e[tag=scp173] at @s if score @s tp_cd matches 0 if score look_at_173* rot173x matches 0 if score look_at_173* rot173y matches 0 if score player_can_see_096* var matches 1 if score dist* air <= max* tp if score @p blink matches 1 run function scp173:tp_en

# execute as @e[tag=scp173] at @s if score @s tp_cd matches 0 if score look_at_173* rot173x matches 0 if score look_at_173* rot173y matches 0 if score player_can_see_096* var matches 1 if score dist* air > max* tp run function scp173:tp_not_en
# execute as @e[tag=scp173] at @s if score @s tp_cd matches 0 if score look_at_173* rot173x matches 0 if score look_at_173* rot173y matches 0 if score player_can_see_096* var matches 1 if score dist* air > max* tp if score @p blink matches 1 run function scp173:tp_not_en


#enought space to kill by one teleport [!blink]
execute as @e[tag=scp173] at @s run execute if score @s tp_cd matches 0 if score look_at_173* rot173x matches 0 if score player_can_see_173* var matches 1 run execute if score dist* air <= max* tp run function scp173:tp_en
execute as @e[tag=scp173] at @s run execute if score @s tp_cd matches 0 if score look_at_173* rot173y matches 0 if score player_can_see_173* var matches 1 run execute if score dist* air <= max* tp run function scp173:tp_en

#not enought space to kill by one teleport [!blink]
execute as @e[tag=scp173] at @s run execute if score @s tp_cd matches 0 if score look_at_173* rot173x matches 0 if score player_can_see_173* var matches 1 run execute if score dist* air > max* tp run function scp173:tp_not_en
execute as @e[tag=scp173] at @s run execute if score @s tp_cd matches 0 if score look_at_173* rot173y matches 0 if score player_can_see_173* var matches 1 run execute if score dist* air > max* tp run function scp173:tp_not_en

#enought space to kill by one teleport [blink]
execute as @e[tag=scp173] at @s run execute if score @s tp_cd matches 0 if score player_can_see_173* var matches 1 run execute if score dist* air <= max* tp if score @p blink matches 1 run function scp173:tp_en

#not enought space to kill by one teleport [blink]
execute as @e[tag=scp173] at @s run execute if score @s tp_cd matches 0 if score player_can_see_173* var matches 1 run execute if score dist* air > max* tp if score @p blink matches 1 run function scp173:tp_not_en

