data modify entity @n[type=zombie, tag=scp096] NoAI set value 0

execute as @n[type=item_display, tag=aj.scp096.root] run function animated_java:scp096/animations/run/play

tag @s add raged
tag @s remove readyToBeTriggered
tag @s remove triggered