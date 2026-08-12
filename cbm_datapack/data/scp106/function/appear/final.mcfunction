scoreboard players set 106 appear_timer -1
scoreboard players set 106 scp106state 1
scoreboard players set 106 chasetheme_cd 0

execute as @n[tag=aj.scp106.root] run function animated_java:scp106/animations/idle/stop
execute as @n[tag=aj.scp106.root] run function animated_java:scp106/animations/walk/play