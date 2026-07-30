execute as @n[tag=aj.door1.root] run function animated_java:door1/animations/open_close_toggle/resume
execute at @n[tag=aj.door1.root] run playsound cb:door1.open_dist ambient @a ~ ~ ~ 5 1 1

execute as @e[tag=lever,tag=storage939] run function animated_java:lever/animations/switch/resume

tag @e[type=item_display, tag=storage939, tag=lever] add uninteractibale