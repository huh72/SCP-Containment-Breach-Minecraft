data modify entity @n[tag=ulgrin] wander_target set from entity @n[tag=i.pathpoint2] Pos

execute store result score .conv i run random value 0..4 cb:i.conv

execute if score .conv i matches 0 at @n[tag=ulgrin] run playsound cb:i.0a ambient @a ~ ~100 ~ 100 1 1
execute if score .conv i matches 0 at @n[tag=guard,tag=!ulgrin] run playsound cb:i.0b ambient @a ~ ~100 ~ 100 1 1
execute if score .conv i matches 1 at @n[tag=ulgrin] run playsound cb:i.1a ambient @a ~ ~100 ~ 100 1 1
execute if score .conv i matches 1 at @n[tag=guard,tag=!ulgrin] run playsound cb:i.1b ambient @a ~ ~100 ~ 100 1 1
execute if score .conv i matches 2 at @n[tag=ulgrin] run playsound cb:i.2a ambient @a ~ ~100 ~ 100 1 1
execute if score .conv i matches 2 at @n[tag=guard,tag=!ulgrin] run playsound cb:i.2b ambient @a ~ ~100 ~ 100 1 1
execute if score .conv i matches 3 at @n[tag=ulgrin] run playsound cb:i.3a ambient @a ~ ~100 ~ 100 1 1
execute if score .conv i matches 3 at @n[tag=guard,tag=!ulgrin] run playsound cb:i.3b ambient @a ~ ~100 ~ 100 1 1
execute if score .conv i matches 4 at @n[tag=ulgrin] run playsound cb:i.4a ambient @a ~ ~100 ~ 100 1 1
execute if score .conv i matches 4 at @n[tag=guard,tag=!ulgrin] run playsound cb:i.4b ambient @a ~ ~100 ~ 100 1 1

tag @n[tag=i.pathpoint1] add passed