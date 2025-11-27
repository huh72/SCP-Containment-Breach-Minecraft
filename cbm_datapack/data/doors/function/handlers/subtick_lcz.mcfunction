#
scoreboard players remove @e[type=marker,scores={door_interact_cd=1..}] door_interact_cd 1
scoreboard players remove @e[type=marker,scores={card_interact_cd=1..}] card_interact_cd 1

#interact check 
execute at @e[type=marker,tag=door_marker,tag=!card,tag=r0] positioned ~2 ~ ~1.5 run tag @s[distance=..1.25] add can_interact_with_door
execute at @e[type=marker,tag=door_marker,tag=!card,tag=r0] positioned ~-2 ~ ~-1.5 run tag @s[distance=..1.25] add can_interact_with_door
execute at @e[type=marker,tag=door_marker,tag=!card,tag=r1] positioned ~-1.5 ~ ~2 run tag @s[distance=..1.25] add can_interact_with_door
execute at @e[type=marker,tag=door_marker,tag=!card,tag=r1] positioned ~1.5 ~ ~-2 run tag @s[distance=..1.25] add can_interact_with_door
tag @s[tag=can_interact_with_door] add looking_on_door

#interact check -card
execute at @e[type=marker,tag=door_marker,tag=card,tag=r0] positioned ~2 ~ ~1.5 run tag @s[distance=..1.25] add can_interact_with_door_card
execute at @e[type=marker,tag=door_marker,tag=card,tag=r0] positioned ~-2 ~ ~-1.5 run tag @s[distance=..1.25] add can_interact_with_door_card
execute at @e[type=marker,tag=door_marker,tag=card,tag=r1] positioned ~-1.5 ~ ~2 run tag @s[distance=..1.25] add can_interact_with_door_card
execute at @e[type=marker,tag=door_marker,tag=card,tag=r1] positioned ~1.5 ~ ~-2 run tag @s[distance=..1.25] add can_interact_with_door_card
tag @s[tag=can_interact_with_door_card] add looking_on_door

#interact check -card
execute at @e[type=marker,tag=door_marker_check0] positioned ~ ~ ~2 run tag @s[distance=..1.25] add can_interact_with_door_check
execute at @e[type=marker,tag=door_marker_check0] positioned ~ ~ ~-2 run tag @s[distance=..1.25] add can_interact_with_door_check
tag @s[tag=can_interact_with_door_check] add looking_on_door


#door
# execute as @p[tag=can_interact_with_door,scores={door_right_click=1..}] at @s run execute as @n[tag=aj.door0.root] at @s if score @n[type=marker,tag=door_marker,tag=!door_marker_check0,tag=closed,distance=..1] door_interact_cd matches 0 run function animated_java:door0/animations/openclosetoggle/play
# execute as @p[tag=can_interact_with_door,scores={door_right_click=1..}] at @s run execute as @n[tag=aj.door0.root] at @s if score @n[type=marker,tag=door_marker,tag=!door_marker_check0,tag=opened,distance=..1] door_interact_cd matches 0 run function animated_java:door0/animations/openclosetoggle/resume
execute at @n[tag=aj.door.root] if score @s[tag=can_interact_with_door,scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker,tag=closed,distance=..1] access_level as @n[tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/play
execute at @n[tag=aj.door.root] if score @s[tag=can_interact_with_door,scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker,tag=opened,distance=..1] access_level as @n[tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/resume

execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker,scores={door_interact_cd=0},tag=closed] as @n[type=item_display,tag=aj.door0.root] run function animated_java:door_card0/animations/openclosetoggle/play

# execute as @p[tag=can_interact_with_door,scores={door_right_click=1..}] at @s run execute as @n[tag=aj.door0.root] at @s if score @n[type=marker,tag=door_marker,tag=!door_marker_check0,tag=closed,distance=..1] door_interact_cd matches 0 run function animated_java:door0/animations/openclosetoggle/play
# execute as @p[tag=can_interact_with_door,scores={door_right_click=1..}] at @s run execute as @n[tag=aj.door0.root] at @s if score @n[type=marker,tag=door_marker,tag=!door_marker_check0,tag=opened,distance=..1] door_interact_cd matches 0 run function animated_java:door0/animations/openclosetoggle/resume

#card
execute at @n[tag=aj.door_card0.root] if score @s[tag=can_interact_with_door,scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker,tag=closed,distance=..1] access_level as @n[tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/play
execute at @n[tag=aj.door_card0.root] if score @s[tag=can_interact_with_door,scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker,tag=opened,distance=..1] access_level as @n[tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/resume
execute as @p[tag=can_interact_with_door_card,scores={door_right_click=1..}] at @s if score @s access_level < @n[tag=door_marker,tag=card,scores={card_interact_cd=0}] access_level run function doors:card_denied

#checkpoint doors
# execute as @p[tag=can_interact_with_door_check,scores={door_right_click=1..}] if score @s access_level >= @n[type=marker,tag=door_marker_check0,tag=!blocked] access_level at @s as @n[tag=aj.door_check0.root,limit=2] at @s if score @n[tag=door_marker_check0,tag=closed,distance=..1] door_interact_cd matches 0 run function animated_java:door_check0/animations/openclosetoggle/play
# execute as @p[tag=can_interact_with_door_check,scores={door_right_click=1..}] if score @s access_level >= @n[type=marker,tag=door_marker_check0,tag=!blocked] access_level at @s as @n[tag=aj.door_check0.root,limit=2] at @s if score @n[tag=door_marker_check0,tag=opened,distance=..1] door_interact_cd matches 0 run function animated_java:door_check0/animations/openclosetoggle/resume

#access denied
execute as @p[tag=can_interact_with_door_check,scores={door_right_click=1..}] at @s if score @s access_level < @n[type=marker,tag=door_marker_check0,scores={card_interact_cd=0},tag=!blocked,distance=..3.5] access_level run function doors:card_denied
execute as @p[tag=can_interact_with_door_check,scores={door_right_click=1..}] at @s if entity @n[type=marker,tag=door_marker_check0,tag=blocked,distance=..3.5] run function doors:card_access_denied

#
tag @s remove can_interact_with_door
tag @s remove can_interact_with_door_card
tag @s remove can_interact_with_door_check