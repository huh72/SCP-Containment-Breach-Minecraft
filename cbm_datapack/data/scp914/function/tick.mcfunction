#timer cd remove
execute if score timer scp914 matches 1.. run scoreboard players add timer scp914 1
execute if score timer scp914 >= max scp914 run scoreboard players set timer scp914 0

### doors close + sound
execute if score timer scp914 matches 40 as @e[type=minecraft:marker,tag=door914] at @s positioned ^ ^ ^1 run function scp914:close_doors
execute if score timer scp914 matches 40 as @e[type=minecraft:marker,tag=door914] at @s run playsound cb:scp914.doorclose ambient @a ~ ~ ~ 0.85 1 1

### remaking items - take this
### concept
# 1. 914 start -- proceed to middle timing -- item remaking
# 2. main file -- depends on mode -- rough/coarse/1:1/fine/veryfine 
# 3. ex. -- if file(fine) -- card1 -- chances -- upgrade/downgrade/pass

execute if score timer scp914 matches 210 as @e[type=minecraft:armor_stand,tag=input_item] at @s run function scp914:rework_items
execute if score timer scp914 matches 210 as @e[type=minecraft:armor_stand,tag=input_player] at @s run function scp914:rework_players

### doors open + sound
execute if score timer scp914 matches 215 as @e[type=minecraft:marker,tag=door914] at @s positioned ^ ^ ^1 run function scp914:open_doors

### mode change + interaction
execute as @e[tag=mode914] on target if score timer scp914 matches 0 run function scp914:change_mode
data remove entity @e[tag=mode914,limit=1] interaction

### start + interaction
execute as @e[tag=startbutton914] on target if score timer scp914 matches 0 run function scp914:start
data remove entity @e[tag=startbutton914,limit=1] interaction

### Looking detect, interact
execute as @a at @s if entity @n[tag=startbutton914,distance=..6] if score timer scp914 matches 0 anchored eyes run function scp914:interact_detect
