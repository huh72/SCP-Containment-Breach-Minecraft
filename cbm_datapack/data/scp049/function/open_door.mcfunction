execute as @n[tag=door_marker] if score @s door_interact_cd matches 0 as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/play
execute as @n[tag=door_marker_hcz] if score @s door_interact_cd matches 0 as @n[tag=aj.door1.root] run function animated_java:door1/animations/open_close_toggle/play
scoreboard players operation 049 door_open_cd = max door_open_cd

# if score @n[tag=door_marker,tag=closed,distance=..1] door_interact_cd matches 0 run function animated_java:door0/animations/openclosetoggle/play