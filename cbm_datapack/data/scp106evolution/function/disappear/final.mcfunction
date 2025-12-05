scoreboard players set 106 disappear_timer -1

execute as @n[tag=aj.scp106.root] run function animated_java:scp106/animations/idle/stop

execute as @n[type=item_display,tag=aj.scp106.root] run function animated_java:scp106/remove/all
kill @e[type=marker,tag=scp106origin]
kill @e[type=marker,tag=106origin]