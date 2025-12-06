tag @a remove 106target
stopsound @a ambient cb:scp106.chase

execute as @n[tag=106origin] at @s run function scp106evolution:pd_shrink/spawn

scoreboard players set 106 disappear_timer 0
scoreboard players set 106 scp106state 0
execute as @n[tag=aj.scp106.root] run function animated_java:scp106/animations/walk/stop
execute as @n[tag=aj.scp106.root] run function animated_java:scp106/animations/idle/play