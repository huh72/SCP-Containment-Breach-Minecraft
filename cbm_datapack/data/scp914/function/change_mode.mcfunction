
execute if score mode scp914 matches 2.. run scoreboard players set mode scp914 -3
execute if score mode scp914 matches -3..2 run scoreboard players add mode scp914 1

kill @e[tag=textdisplay914]
execute if score mode scp914 matches -2 at @n[tag=mode914] run summon minecraft:text_display ^ ^1 ^0.05 {"text":"rough",Tags:['textdisplay914'],background:0}
execute if score mode scp914 matches -1 at @n[tag=mode914] run summon minecraft:text_display ^ ^1 ^0.05 {"text":"coarse",Tags:['textdisplay914'],background:0}
execute if score mode scp914 matches 0 at @n[tag=mode914] run summon minecraft:text_display ^ ^1 ^0.05 {"text":"1:1",Tags:['textdisplay914'],background:0}
execute if score mode scp914 matches 1 at @n[tag=mode914] run summon minecraft:text_display ^ ^1 ^0.05 {"text":"fine",Tags:['textdisplay914'],background:0}
execute if score mode scp914 matches 2 at @n[tag=mode914] run summon minecraft:text_display ^ ^1 ^0.05 {"text":"very fine",Tags:['textdisplay914'],background:0}

execute at @n[tag=mode914] run playsound cb:interact.leverflip ambient @a ~ ~ ~ 1 1 1
execute as @e[tag=aj.914_button.root] run function animated_java:914_button/animations/change_mode/play with storage aj:temp
