execute as @e[type=item_display,tag=aj.914_start.root] run function animated_java:914_start/animations/start/play with storage aj:temp
playsound cb:scp914.refining ambient @a[distance=..20] ~ ~ ~ 0.35 1 1
scoreboard players set timer scp914 1