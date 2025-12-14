### detect items in input
#remove tags
tag @e remove input_item
tag @a remove input_player
#add tags
execute as @e[tag=drop] at @s if entity @e[tag=input,distance=..1.8] run tag @s add input_item
execute as @a[tag=player] at @s if entity @e[tag=input,distance=..1.7] run tag @s add input_player

# blocks close door
setblock ^ ^ ^ minecraft:cobblestone_wall
setblock ^ ^1 ^ minecraft:cobblestone_wall
setblock ^ ^ ^1 minecraft:cobblestone_wall
setblock ^ ^1 ^1 minecraft:cobblestone_wall

execute as @n[type=item_display,tag=aj.door914.root] run function animated_java:door914/animations/open/stop
execute as @n[type=item_display,tag=aj.door914.root] run function animated_java:door914/animations/close/play