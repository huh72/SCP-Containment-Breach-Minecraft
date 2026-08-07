tag @s add looking_on_door

execute if score @s right_click_item matches 1.. as @n[tag=lever] unless entity @s[tag=uninteractibale] if entity @s[tag=storage939, tag=up, tag=!proceed] as @n[type=item_display,tag=singledoor1,tag=storage939door,tag=closed] at @s run function doors:open_storage_939

# execute if score @s right_click_item matches 1.. as @n[tag=lever] if entity @s[tag=generator, tag=up, tag=!proceed] if score .state chamber049.event matches 1 run function events:049/2
# execute if score @s right_click_item matches 1.. as @n[tag=lever] if entity @s[tag=elevatorPowerFeed, tag=up, tag=!proceed] if score .state chamber049.event matches 2 run function events:049/3

execute if score @s right_click_item matches 1.. as @n[tag=lever] unless entity @s[tag=uninteractibale] if entity @s[tag=down,tag=!proceed] run function animated_java:lever/animations/switch/play
execute if score @s right_click_item matches 1.. as @n[tag=lever] unless entity @s[tag=uninteractibale] if entity @s[tag=up,tag=!proceed] run function animated_java:lever/animations/switch/resume