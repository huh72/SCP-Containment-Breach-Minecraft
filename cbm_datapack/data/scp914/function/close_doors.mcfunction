### detect items in input
#remove tags
tag @e remove input_item
tag @a remove input_player
#add tags
execute as @e[tag=drop] at @s if entity @n[tag=input,distance=..1.8] run tag @s add input_item
execute as @a[tag=player, tag=!dead] at @s if entity @n[tag=input,distance=..1.7] run tag @s add input_player

# blocks close door
execute as @n[tag=input] if entity @s[tag=270] run setblock ^ ^ ^ minecraft:lightning_rod[facing=north]
execute as @n[tag=input] if entity @s[tag=270] run setblock ^ ^1 ^ minecraft:lightning_rod[facing=north]
execute as @n[tag=input] if entity @s[tag=270] run setblock ^ ^ ^1 minecraft:lightning_rod[facing=north]
execute as @n[tag=input] if entity @s[tag=270] run setblock ^ ^1 ^1 minecraft:lightning_rod[facing=north]

execute as @n[tag=input] if entity @s[tag=180] run setblock ^ ^ ^ minecraft:lightning_rod[facing=west]
execute as @n[tag=input] if entity @s[tag=180] run setblock ^ ^1 ^ minecraft:lightning_rod[facing=west]
execute as @n[tag=input] if entity @s[tag=180] run setblock ^ ^ ^1 minecraft:lightning_rod[facing=west]
execute as @n[tag=input] if entity @s[tag=180] run setblock ^ ^1 ^1 minecraft:lightning_rod[facing=west]

execute as @n[type=item_display,tag=aj.door914.root] run function animated_java:door914/animations/open/stop
execute as @n[type=item_display,tag=aj.door914.root] run function animated_java:door914/animations/close/play