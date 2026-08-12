tag @s remove up
tag @s remove reappearing

scoreboard players set 106 reappear_timer -1
scoreboard players set 106 scp106state 1

execute as @n[type=item_display,tag=aj.scp106.root] run function animated_java:scp106/animations/idle/stop
execute as @n[type=item_display,tag=aj.scp106.root] run function animated_java:scp106/animations/walk/play

function scp106:sounds/laugh