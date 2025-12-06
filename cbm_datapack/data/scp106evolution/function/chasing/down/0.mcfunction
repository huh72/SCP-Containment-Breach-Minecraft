tag @s add reappearing
tag @s add down

scoreboard players set 106 reappear_timer 0
scoreboard players set 106 scp106state 0

execute as @n[type=item_display,tag=aj.scp106.root] run function animated_java:scp106/animations/walk/stop
execute as @n[type=item_display,tag=aj.scp106.root] run function animated_java:scp106/animations/idle/play

function scp106evolution:sounds/laugh