tag @s add looking_on_door


#door
execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker,scores={door_interact_cd=0},tag=!card,tag=closed,distance=..4] as @n[type=item_display,tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/play
execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker,scores={door_interact_cd=0},tag=!card,tag=opened,distance=..4] as @n[type=item_display,tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume

#card
execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker,tag=card,scores={door_interact_cd=0},tag=closed,distance=..4] if score @s access_level >= @n[type=marker,tag=door_marker,tag=card,scores={door_interact_cd=0},tag=closed,distance=..4] access_level as @n[type=item_display,tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/play
execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker,tag=card,scores={door_interact_cd=0},tag=opened,distance=..4] if score @s access_level >= @n[type=marker,tag=door_marker,tag=card,scores={door_interact_cd=0},tag=opened,distance=..4] access_level as @n[type=item_display,tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/resume
execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker,tag=card,scores={door_interact_cd=0},distance=..4] if score @s access_level < @n[type=marker,tag=door_marker,tag=card,scores={door_interact_cd=0,card_interact_cd=0},distance=..4] access_level positioned ~ ~1 ~ run function doors:card_denied

#check point
execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker_checkpoint,scores={door_interact_cd=0},tag=closed,distance=..4] if score @s access_level >= @n[type=marker,tag=door_marker_checkpoint,scores={door_interact_cd=0},tag=closed,distance=..4] access_level as @n[type=item_display,tag=aj.door_check0.root] run function animated_java:door_check0/animations/openclosetoggle/play
execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker_checkpoint,scores={door_interact_cd=0},tag=opened,distance=..4] if score @s access_level >= @n[type=marker,tag=door_marker_checkpoint,scores={door_interact_cd=0},tag=opened,distance=..4] access_level as @n[type=item_display,tag=aj.door_check0.root] run function animated_java:door_check0/animations/openclosetoggle/resume
execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker_checkpoint,scores={door_interact_cd=0},tag=opened,distance=..4] if score @s access_level >= @n[type=marker,tag=door_marker_checkpoint,scores={door_interact_cd=0},tag=opened,distance=..4] access_level as @n[type=item_display,tag=aj.door_check0.root] run playsound cb:interact.card ambient @a[distance=..24] ~ ~ ~ 2 1 1
execute if score @s[tag=can_interact_with_door] door_right_click matches 1.. at @n[type=marker,tag=door_marker_checkpoint,scores={door_interact_cd=0},distance=..4] if score @s access_level < @n[type=marker,tag=door_marker_checkpoint,scores={door_interact_cd=0,card_interact_cd=0},distance=..4] access_level positioned ~ ~1 ~ run function doors:card_denied
#stop sound if door already closed
execute if entity @e[type=marker,tag=door_marker_checkpoint,tag=closed,distance=..4] run stopsound @a ambient cb:door.locksiren


#
# tag @s remove can_interact_with_door
# tag @s remove can_interact_with_door_card
# tag @s remove can_interact_with_door_check