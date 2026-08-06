say 15!
execute at @n[tag=008spawnpoint] rotated 180 0 run function animated_java:scp008/summon with storage aj:temp
execute as @n[tag=aj.scp008.root] run function animated_java:scp008/animations/close/set_frame {"frame":"0"}

#g init doors
execute at @n[type=marker, tag=doorsspawnpoint] positioned ~3 ~ ~ rotated 90 0 run function animated_java:singledoor0/summon with storage aj:temp
execute at @n[type=marker, tag=doorsspawnpoint] positioned ~3 ~ ~ run tag @n[tag=aj.singledoor0.root] add 008_0

execute at @n[type=marker, tag=doorsspawnpoint] positioned ~-3 ~ ~ rotated 90 0 run function animated_java:singledoor0/summon with storage aj:temp
execute at @n[type=marker, tag=doorsspawnpoint] positioned ~-3 ~ ~ as @n[tag=aj.singledoor0.root] run function animated_java:singledoor0/animations/openclosetoggle/set_frame {"frame":"0"}
execute at @n[type=marker, tag=doorsspawnpoint] positioned ~-3 ~ ~ run tag @n[tag=aj.singledoor0.root] add 008_1
execute as @n[tag=aj.singledoor0.root, tag=008_1] run function animated_java:singledoor0/animations/openclosetoggle/play