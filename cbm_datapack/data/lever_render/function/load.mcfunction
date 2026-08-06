execute as @s at @s run function animated_java:lever/summon with storage aj:temp

execute if entity @s[tag=down] run tag @n[tag=lever] add down
execute if entity @s[tag=up] run tag @n[tag=lever] add up
execute if entity @s[tag=lczlockdown] run tag @n[tag=lever] add lczlockdown
#g elc center in ez
execute if entity @s[tag=elc.primaryLighting] run tag @n[tag=lever] add elc.primaryLighting
execute if entity @s[tag=elc.secondaryLighting] run tag @n[tag=lever] add elc.secondaryLighting
execute if entity @s[tag=elc.doorControl] run tag @n[tag=lever] add elc.doorControl

execute as @n[tag=lever] if entity @s[tag=up] run function animated_java:lever/animations/switch/apply_frame {"frame":"20"}

kill @s