tag @n[tag=i.pathpoint5] add passed

scoreboard players operation .timer i = 1000 i
scoreboard players set .status i 4

#close door
execute at @n[tag=i.door0] as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume