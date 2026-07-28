#timer cd remove
execute if score timer scp914 matches 1.. run scoreboard players add timer scp914 1
execute if score timer scp914 >= max scp914 run scoreboard players set timer scp914 0

### doors close + sound
execute if score timer scp914 matches 40 as @e[type=minecraft:marker,tag=door914] at @s positioned ^ ^ ^1 run function scp914:close_doors
execute if score timer scp914 matches 40 as @e[type=minecraft:marker,tag=door914] at @s run playsound cb:scp914.doorclose ambient @a[distance=..14] ~ ~ ~ 0.85 1 1

execute if score timer scp914 matches 210 as @e[type=minecraft:armor_stand,tag=input_item] at @s run function scp914:rework_items
execute if score timer scp914 matches 210 as @e[type=minecraft:armor_stand,tag=input_player] at @s run function scp914:rework_players

### doors open + sound
execute if score timer scp914 matches 215 as @e[type=minecraft:marker,tag=door914] at @s positioned ^ ^ ^1 run function scp914:open_doors

### mode change + interaction
execute as @e[tag=mode914] on target if score timer scp914 matches 0 run function scp914:change_mode
data remove entity @n[tag=mode914] interaction

### start + interaction
execute as @e[tag=startbutton914] at @s on target if score timer scp914 matches 0 run function scp914:start
data remove entity @n[tag=startbutton914] interaction

### Looking detect, interact
execute as @a at @s if entity @n[type=marker,tag=startbutton914,distance=..6] if score timer scp914 matches 0 anchored eyes run function scp914:interact_detect

# execute at @e[tag=event2_handler] positioned ^ ^ ^1 run particle angry_villager
# execute at @e[tag=marker914] positioned ^ ^ ^1 run particle angry_villager
