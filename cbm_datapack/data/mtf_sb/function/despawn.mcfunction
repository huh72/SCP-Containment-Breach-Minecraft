execute as @s run particle block{block_state:{Name:redstone_block}} ~ ~1.5 ~ 0 0 0 0 30
execute as @n[type=item_display, tag=aj.mtf.root] run function animated_java:mtf/remove/this
kill @s

