tag @s add looking_on_door

#button
execute if score @s door_right_click matches 1.. as @n[type=marker,tag=door_marker_hcz] at @s if entity @s[type=marker,tag=button,scores={door_interact_cd=0},tag=closed] as @n[type=item_display,tag=aj.door1.root] run function animated_java:door1/animations/open_close_toggle/play
execute if score @s door_right_click matches 1.. as @n[type=marker,tag=door_marker_hcz] at @s if entity @s[type=marker,tag=button,scores={door_interact_cd=0},tag=opened] as @n[type=item_display,tag=aj.door1.root] run function animated_java:door1/animations/open_close_toggle/resume

#card
# execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker_hcz] access_level as @n[type=marker,tag=door_marker_hcz] if entity @s[tag=card,scores={door_interact_cd=0},tag=closed] as @n[type=item_display,tag=aj.door_card0.root] run function animated_java:door_card1/animations/open_close_toggle/play
# execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker_hcz] access_level as @n[type=marker,tag=door_marker_hcz] if entity @s[tag=card,scores={door_interact_cd=0},tag=opened] as @n[type=item_display,tag=aj.door_card0.root] run function animated_java:door_card1/animations/open_close_toggle/resume
# execute if score @s[scores={door_right_click=1..,card_interact_cd=0}] access_level < @n[type=marker,tag=door_marker_hcz] access_level as @n[type=marker,tag=door_marker_hcz] if entity @s[tag=card,scores={door_interact_cd=0}] positioned ~ ~1 ~ run function doors:card_denied

#check point
# execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker_hcz] access_level as @n[type=marker,tag=door_marker_hcz] if entity @s[tag=checkpoint,scores={door_interact_cd=0},tag=closed] as @n[type=item_display,tag=aj.door_check0.root] run function animated_java:door_check0/animations/openclosetoggle/play
# execute if score @s[scores={door_right_click=1..}] access_level >= @n[type=marker,tag=door_marker_hcz] access_level as @n[type=marker,tag=door_marker_hcz] if entity @s[tag=checkpoint,scores={door_interact_cd=0},tag=opened] as @n[type=item_display,tag=aj.door_check0.root] run function animated_java:door_check0/animations/openclosetoggle/resume
# execute if score @s[scores={door_right_click=1..}] access_level < @n[type=marker,tag=door_marker_hcz] access_level as @n[type=marker,tag=door_marker_hcz] if entity @s[tag=checkpoint,scores={door_interact_cd=0}] positioned ~ ~1 ~ run function doors:card_denied
# execute as @n[type=marker,tag=door_marker_hcz] if entity @s[type=marker,tag=checkpoint,tag=closed] run stopsound @a ambient cb:door.locksiren

#clear tag
tag @s remove close_to_door_hcz