# execute as @n[tag=event2_handler] at @s run tp @s ~ ~ ~ ~180 ~

# execute store result storage cb:spawn914 rotationX int 1 run data get entity @n[tag=event2_handler] Rotation[0]
# execute store result storage cb:spawn914 rotationY int 1 run data get entity @n[tag=event2_handler] Rotation[1]

# execute as @n[tag=event2_handler] at @s run tp @s ~ ~ ~ ~-180 ~

say 914 dependencies func()!

execute as @n[type=marker,tag=event2_handler] at @s run function scp914:spawn/helper with storage cb:spawn914