data modify entity @n[type=zombie, tag=scp096] NoAI set value 1

execute as @n[type=item_display, tag=aj.scp096.root] run function animated_java:scp096/animations/run/stop
execute as @n[type=item_display, tag=aj.scp096.root] run function animated_java:scp096/animations/idle_sit/play

tag @n[type=zombie, tag=scp096] remove raged
tag @n[type=zombie, tag=scp096] add idle

scoreboard players set 096 rageCycle 0