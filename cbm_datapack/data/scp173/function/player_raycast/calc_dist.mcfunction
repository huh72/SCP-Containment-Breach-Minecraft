execute if score air v matches 0 run tag @s add can_see_173
tag @s add checked
scoreboard players operation dist* air /= 2* math
scoreboard players operation @s distance = dist* air
scoreboard players set air v 2