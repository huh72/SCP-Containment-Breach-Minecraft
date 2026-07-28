execute as @n[type=item_display,tag=aj.914_button.root] run function animated_java:914_button/remove/all with storage aj:temp
execute as @n[type=item_display,tag=aj.914_start.root] run function animated_java:914_start/remove/all with storage aj:temp
execute as @n[type=item_display,tag=aj.door914.root] run function animated_java:door914/remove/all with storage aj:temp
# execute as @n[type=item_display,tag=aj.gate.root] run function animated_java:gate/remove/this with storage aj:temp

kill @e[type=marker,tag=input]
kill @e[type=marker,tag=output]

kill @e[type=marker,tag=doors_input]
kill @e[type=marker,tag=doors_output]

kill @e[tag=+interact]