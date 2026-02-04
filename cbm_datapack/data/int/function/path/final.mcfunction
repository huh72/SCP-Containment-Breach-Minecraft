tag @n[tag=i.pathpoint5] add passed

scoreboard players operation .timer i = 1000 i
scoreboard players set .status i 4

execute at @n[tag=ulgrin] run playsound cb:i.ulgrin.escortdone ambient @a[distance=..16] ~ ~1 ~ 1 1 1
execute as @e[tag=!balcony,tag=!musicguard] run function mtf:switchhostility {"s":"@s"}

#close door
execute at @n[tag=i.door0] as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume