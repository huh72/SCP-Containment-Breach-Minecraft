###LCZ
execute as @e[type=item_display,tag=aj.door0.root,tag=!render_constantly] at @s if entity @n[tag=door_marker,tag=!dr.not_rendered,tag=!card,tag=!sc] unless entity @a[distance=..20] run function animated_java:door0/remove/this
execute as @e[type=marker,tag=door_marker,tag=dr.not_rendered,tag=!card,tag=!sc,tag=!render_constantly] at @s if entity @a[distance=..19] run function doors:respawn_door

#card lcz
execute as @e[type=item_display,tag=aj.door_card0.root] at @s if entity @n[tag=door_marker,tag=!dr.not_rendered,tag=card] unless entity @a[distance=..20] run function animated_java:door_card0/remove/this
execute as @e[type=marker,tag=door_marker,tag=dr.not_rendered,tag=card] at @s if entity @a[distance=..19] run function doors:respawn_door_card

#scanner lcz
execute as @e[type=item_display, tag=aj.door0_sc.root] at @s if entity @n[tag=door_marker,tag=!dr.not_rendered,tag=sc] unless entity @a[distance=..20] run function animated_java:door0_sc/remove/this
execute as @e[type=marker, tag=door_marker, tag=dr.not_rendered, tag=sc] at @s if entity @a[distance=..19] run function doors:respawn_door_sc


###HCZ
execute as @e[type=item_display,tag=aj.door1.root,tag=!render_constantly] at @s if entity @n[tag=door_marker_hcz,tag=!dr.not_rendered,tag=!card] unless entity @a[distance=..20] run function animated_java:door1/remove/this
execute as @e[type=marker,tag=door_marker_hcz,tag=dr.not_rendered,tag=!card,tag=!render_constantly] at @s if entity @a[distance=..19] run function doors:respawn_door_hcz


###EZ
execute as @e[type=item_display,tag=aj.door0.root] at @s if entity @n[tag=door_marker_ez,tag=!dr.not_rendered,tag=!card] unless entity @a[distance=..20] run function animated_java:door0/remove/this
execute as @e[type=marker,tag=door_marker_ez,tag=dr.not_rendered,tag=!card] at @s if entity @a[distance=..19] run function doors:respawn_door_ez