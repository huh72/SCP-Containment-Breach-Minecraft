playsound cb:scp914.dooropen ambient @a ~ ~ ~ 0.85 1 1
execute as @n[type=item_display,tag=aj.door914.root] run function animated_java:door914/animations/close/stop
execute as @n[type=item_display,tag=aj.door914.root] run function animated_java:door914/animations/open/play

setblock ^ ^ ^ minecraft:air
setblock ^ ^1 ^ minecraft:air
setblock ^ ^ ^1 minecraft:air
setblock ^ ^1 ^1 minecraft:air