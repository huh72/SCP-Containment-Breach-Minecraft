tag @s add looking_on_door

#button
execute if score @s door_right_click matches 1.. as @n[type=marker,tag=door_marker] at @s if entity @s[type=marker,tag=button,scores={door_interact_cd=0},tag=closed] as @n[type=item_display,tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/play
execute if score @s door_right_click matches 1.. as @n[type=marker,tag=door_marker] at @s if entity @s[type=marker,tag=button,scores={door_interact_cd=0},tag=opened] as @n[type=item_display,tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume

#card
execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=card,scores={door_interact_cd=0},tag=closed] as @n[type=item_display,tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/play
execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=card,scores={door_interact_cd=0},tag=opened] as @n[type=item_display,tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/resume
execute if score @s[scores={door_right_click=1..,card_interact_cd=0}] access_level < @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=card,scores={door_interact_cd=0}] positioned ~ ~1 ~ run function doors:card_denied

#check point
execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=checkpoint,scores={door_interact_cd=0},tag=closed] as @n[type=item_display,tag=aj.door_check0.root] run function animated_java:door_check0/animations/openclosetoggle/play
execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=checkpoint,scores={door_interact_cd=0},tag=opened] as @n[type=item_display,tag=aj.door_check0.root] run function animated_java:door_check0/animations/openclosetoggle/resume
execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=checkpoint,scores={door_interact_cd=0},tag=opened] positioned ~ ~1 ~ run playsound cb:interact.card ambient @a[distance=..24] ~ ~ ~ 2 1 1
execute if score @s[scores={door_right_click=1..,card_interact_cd=0}] access_level < @n[type=marker,tag=door_marker] access_level as @n[type=marker,tag=door_marker] if entity @s[tag=checkpoint,scores={door_interact_cd=0}] positioned ~ ~1 ~ run function doors:card_denied
execute as @n[type=marker,tag=door_marker] if entity @s[type=marker,tag=checkpoint,tag=closed] run stopsound @a ambient cb:door.locksiren

#clear tag
tag @s remove close_to_door