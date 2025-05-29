execute as @e[tag=aj.door0.root] at @s if entity @n[tag=door_marker,tag=!dr.not_rendered] unless entity @a[distance=..32] run function animated_java:door0/remove/this

execute as @e[tag=door_marker,tag=dr.not_rendered] at @s if entity @a[distance=..31] run function doors:respawn_door