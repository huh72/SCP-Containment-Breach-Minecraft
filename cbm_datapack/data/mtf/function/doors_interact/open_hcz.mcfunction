tag @s add openedByMtf
execute as @n[tag=aj.door1.root] run function animated_java:door1/animations/open_close_toggle/play
# scoreboard players set @s door_autoclose 0

# say open hcz!