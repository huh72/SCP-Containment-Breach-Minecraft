execute at @n[tag=i.classDSpawnPoint0] run function animated_java:class_d/summon with storage aj:temp
execute at @n[tag=i.classDSpawnPoint1] run function animated_java:class_d/summon with storage aj:temp

execute at @n[tag=i.classDSpawnPoint0] run tag @n[tag=aj.class_d.root] add i.0 
execute at @n[tag=i.classDSpawnPoint1] run tag @n[tag=aj.class_d.root] add i.1

tag @n[tag=i.0] add i.tp
tag @n[tag=i.1] add i.tp

execute as @e[tag=aj.class_d.root] at @s run rotate @s facing entity @n[tag=dummy]
execute as @e[tag=aj.class_d.root] at @s run tp @s ~ ~ ~ ~7.5 ~
execute as @e[tag=i.1] at @s run tp @s ~ ~ ~ ~5 ~