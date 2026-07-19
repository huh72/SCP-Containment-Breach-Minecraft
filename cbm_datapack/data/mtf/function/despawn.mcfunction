execute as @n[type=item_display, tag=aj.mtf.root] run function animated_java:mtf/remove/this
execute as @n[type=wandering_trader,tag=mtf] at @s run tp @s ~ ~30 ~
kill @n[type=wandering_trader,tag=mtf]

