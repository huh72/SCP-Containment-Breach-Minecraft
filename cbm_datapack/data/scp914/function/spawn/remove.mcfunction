execute as @n[tag=aj.914_button.root] run function animated_java:914_button/remove/all with storage aj:temp
execute as @n[tag=aj.914_start.root] run function animated_java:914_start/remove/all with storage aj:temp
execute as @n[tag=aj.door914.root] run function animated_java:door914/remove/all with storage aj:temp
execute as @n[tag=aj.gate.root] run function animated_java:gate/remove/this with storage aj:temp

kill @e[tag=input]
kill @e[tag=output]

kill @e[tag=doors_input]
kill @e[tag=doors_output]

kill @e[tag=+interact]