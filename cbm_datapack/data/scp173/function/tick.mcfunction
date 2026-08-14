#vars
execute if score scp173 move_cd matches 1.. run scoreboard players remove scp173 move_cd 1
execute if score 173 rattle_cd matches 1.. if score look_on_173y v matches 0 run scoreboard players remove 173 rattle_cd 1

#rattle sound
execute if score 173 rattle_cd matches 0 at @n[tag=scp173] run function scp173:rattle

#tp a players' marker to a player
execute at @a run tp @n[type=minecraft:marker,tag=scp173_playermarker] ~ ~1 ~ facing entity @n[type=minecraft:armor_stand,tag=scp173]

###whether have players any chance of seeing 173 directly
#tag
tag @a remove can_see_173

#173's marker rotates to player
execute at @n[type=minecraft:armor_stand,tag=scp173] run tp @n[type=minecraft:marker,tag=scp173_marker] ~ ~1 ~ facing entity @p[tag=!checked,tag=!dead] eyes

#raycast -- 173's marker rotates to player to check that is no blocks between 173 and player
tag @n[tag=scp173] remove seen_through_glass
execute at @n[type=minecraft:marker,tag=scp173_marker] if entity @p[distance=..20,tag=!checked,tag=!dead] anchored eyes run function scp173:raycast/player_detect

#is player looking on 173 directly
scoreboard players set look_on_173x v 0
scoreboard players set look_on_173y v 0
execute as @a[tag=can_see_173,tag=!blink] at @s run function scp173:look_detect_x
execute as @a[tag=can_see_173,tag=!blink] at @s run function scp173:look_detect_y

#if so, -- teleport
execute if score scp173 move_cd matches 0 if score look_on_173y v matches 0 as @n[type=minecraft:armor_stand,tag=scp173] at @s if score @p[tag=can_see_173,tag=!dead] distance matches 6.. run function scp173:tp_not_en
execute if score scp173 move_cd matches 0 if score look_on_173y v matches 0 as @n[type=minecraft:armor_stand,tag=scp173] at @s if score @p[tag=can_see_173,tag=!dead] distance matches ..5 run function scp173:tp_en

#kill func
execute if score look_on_173y v matches 0 at @n[type=minecraft:armor_stand,tag=scp173] anchored eyes positioned ^ ^0.5 ^0.5 as @a[distance=..1,tag=!dead,tag=!god] at @s run function scp173:kill

#horror sounds
execute as @a[tag=!dead] run function scp173:horror


tag @a remove checked

