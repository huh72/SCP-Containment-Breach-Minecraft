tag @s remove r0
tag @s remove r1
tag @s remove r2
tag @s remove r3

tag @s[y_rotation=-45..45] add r0
tag @s[y_rotation=45..135] add r1
tag @s[y_rotation=135..225] add r2
tag @s[y_rotation=225..315] add r3

execute as @s[tag=r0] at @s anchored eyes rotated 0 0 run function animated_java:singledoor0/summon with storage aj:temp
execute as @s[tag=r1] at @s anchored eyes rotated 90 0 run function animated_java:singledoor0/summon with storage aj:temp
execute as @s[tag=r2] at @s anchored eyes rotated 180 0 run function animated_java:singledoor0/summon with storage aj:temp
execute as @s[tag=r3] at @s anchored eyes rotated 270 0 run function animated_java:singledoor0/summon with storage aj:temp