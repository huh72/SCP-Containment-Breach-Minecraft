execute as @n[type=wandering_trader, tag=scp939] at @s run tp @s ~ ~35 ~
kill @e[tag=scp939]
kill @e[tag=marker939]

execute as @e[tag=aj.scp939.root] run function animated_java:scp939/remove/this