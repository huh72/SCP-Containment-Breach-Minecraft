#main return
#execute as @e[tag=aj.door0.root] if entity @s[tag=dr.removeProtected] run return run tell @a[tag=tag] 1

###LCZ
execute as @e[type=item_display,tag=aj.door0.root] at @s if entity @n[tag=door_marker,tag=!dr.not_rendered,tag=!card] unless entity @a[distance=..20] run function animated_java:door0/remove/this
execute as @e[type=marker,tag=door_marker,tag=dr.not_rendered,tag=!card] at @s if entity @a[distance=..19] run function doors:respawn_door

#card
execute as @e[type=item_display,tag=aj.door_card0.root] at @s if entity @n[tag=door_marker,tag=!dr.not_rendered,tag=card] unless entity @a[distance=..20] run function animated_java:door_card0/remove/this
execute as @e[type=marker,tag=door_marker,tag=dr.not_rendered,tag=card] at @s if entity @a[distance=..19] run function doors:respawn_door_card

###HCZ
execute as @e[type=item_display,tag=aj.door1.root] at @s if entity @n[tag=door_marker_hcz,tag=!dr.not_rendered,tag=!card] unless entity @a[distance=..20] run function animated_java:door1/remove/this
execute as @e[type=marker,tag=door_marker_hcz,tag=dr.not_rendered,tag=!card] at @s if entity @a[distance=..19] run function doors:respawn_door_hcz



###EZ
execute as @e[type=item_display,tag=aj.door0.root] at @s if entity @n[tag=door_marker_ez,tag=!dr.not_rendered,tag=!card] unless entity @a[distance=..20] run function animated_java:door0/remove/this
execute as @e[type=marker,tag=door_marker_ez,tag=dr.not_rendered,tag=!card] at @s if entity @a[distance=..19] run function doors:respawn_door_ez