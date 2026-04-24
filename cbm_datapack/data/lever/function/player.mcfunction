tag @s add looking_on_door

execute if score @s right_click_item matches 1.. as @n[tag=lever] if entity @s[tag=storage939, tag=up, tag=!proceed] as @n[type=marker,tag=door_marker_hcz,tag=storage939door] at @s if entity @s[tag=closed] run function doors:open_storage_939

execute if score @s right_click_item matches 1.. as @n[tag=lever] if entity @s[tag=down,tag=!proceed] run function animated_java:lever/animations/switch/play
execute if score @s right_click_item matches 1.. as @n[tag=lever] if entity @s[tag=up,tag=!proceed] run function animated_java:lever/animations/switch/resume
