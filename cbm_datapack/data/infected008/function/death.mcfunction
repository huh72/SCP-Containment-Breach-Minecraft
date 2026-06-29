execute if entity @s[tag=d_tesla] run tag @n[tag=aj.infected008.root] add d_tesla

tag @s add toKill008
tp @s ~ ~100 ~
kill @s

execute as @n[tag=aj.infected008.root] run function animated_java:infected008/animations/death/play
