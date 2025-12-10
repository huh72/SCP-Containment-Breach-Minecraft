tag @s add looking_on_door

execute if score @s right_click_item matches 1.. as @n[tag=lever] if entity @s[tag=down,tag=!proceed] run function animated_java:lever/animations/switch/play
execute if score @s right_click_item matches 1.. as @n[tag=lever] if entity @s[tag=up,tag=!proceed] run function animated_java:lever/animations/switch/resume