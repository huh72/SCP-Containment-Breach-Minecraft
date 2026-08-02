function animated_java:scientist/summon with storage aj:temp
execute as @n[tag=scientist] run function animated_java:scientist/animations/corpse/play

execute as @n[tag=scientist] run function animated_java:scientist/variants/decayed/apply
#g rotate
$execute as @n[tag=scientist] at @s run tp @s ~ ~ ~ ~$(corpse) ~

tag @n[tag=scientist] add scientist_corpse.event