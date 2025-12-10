execute as @s at @s run function animated_java:lever/summon with storage aj:temp

execute if entity @s[tag=down] run tag @n[tag=lever] add down
execute if entity @s[tag=up] run tag @n[tag=lever] add up
execute if entity @s[tag=lczlockdown] run tag @n[tag=lever] add lczlockdown

execute as @n[tag=lever] if entity @s[tag=up] run function animated_java:lever/animations/switch/apply_frame {"frame":"20"}

kill @s