#g checkpoint is blocked
execute if entity @s[scores={door_right_click=1..}] as @n[type=marker, tag=door_marker] at @s if entity @s[tag=checkpoint,scores={door_interact_cd=0},tag=blocked] positioned ~ ~1 ~ run return run function doors:card_denied

#g all conditions are satisfied - open/close
execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=checkpoint,scores={door_interact_cd=0},tag=closed] as @n[type=item_display,tag=aj.door_check0.root] run function animated_java:door_check0/animations/openclosetoggle/play
execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=checkpoint,scores={door_interact_cd=0},tag=opened] as @n[type=item_display,tag=aj.door_check0.root] run function animated_java:door_check0/animations/openclosetoggle/resume

#g player is interacting with a card, but level is low
execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=checkpoint,scores={door_interact_cd=0},tag=opened] positioned ~ ~1 ~ run playsound cb:interact.card ambient @a[distance=..12] ~ ~ ~ 0.75 1 1
execute if score @s[scores={door_right_click=1..,card_interact_cd=0,item_selected=1..6}] access_level < @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] at @s if entity @s[tag=checkpoint,scores={door_interact_cd=0}] positioned ~ ~1 ~ run return run function doors:card_denied
#g player is not holding a card
execute if score @s[scores={door_right_click=1..,card_interact_cd=0,item_selected=0}] access_level < @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] at @s if entity @s[tag=checkpoint,scores={door_interact_cd=0}] positioned ~ ~1 ~ run return run function doors:handlers/lcz/requirescard
execute if score @s[scores={door_right_click=1..,card_interact_cd=0,item_selected=7..}] access_level < @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] at @s if entity @s[tag=checkpoint,scores={door_interact_cd=0}] positioned ~ ~1 ~ run return run function doors:handlers/lcz/requirescard

execute as @n[type=marker,tag=door_marker] if entity @s[tag=checkpoint,tag=closed] run stopsound @a * cb:door.locksiren