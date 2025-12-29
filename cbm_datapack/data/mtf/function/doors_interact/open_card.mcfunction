tag @s add openedByMtf
execute as @n[tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/play
scoreboard players set @s door_autoclose 0