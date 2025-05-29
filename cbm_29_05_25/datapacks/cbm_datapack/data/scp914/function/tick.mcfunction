
# execute if score scp914* start_timer matches 1.. run scoreboard players remove scp914* start_timer 1
# execute if score scp914* working_timer matches 1.. run scoreboard players remove scp914* working_timer 1
# execute if score scp914* after_timer matches 1.. run scoreboard players remove scp914* after_timer 1
# execute if score scp914* cd914 matches 1.. run scoreboard players remove scp914* cd914 1

# execute if score start_timer* scp914 matches 1.. run scoreboard players remove start_timer* scp914 1
# execute if score working_timer* scp914 matches 1.. run scoreboard players remove working_timer* scp914 1
# execute if score after_timer* scp914 matches 1.. run scoreboard players remove after_timer* scp914 1
# execute if score cd* scp914 matches 1.. run scoreboard players remove cd* scp914 1

execute if score timer* scp914 <= max* scp914 run scoreboard players add timer* scp914 1
execute if score start_cd* scp914 matches 1.. run scoreboard players remove start_cd* scp914 1

#detect items in input
tag @e remove input_item
tag @e remove input_player
execute as @e[tag=drop] at @s if entity @e[tag=input,distance=..1.8] run tag @s add input_item
execute as @e[tag=drop_int] at @s if entity @e[tag=input,distance=..1.8] run tag @s add input_item
execute as @a[tag=player] at @s if entity @e[tag=input,distance=..1.7] run tag @s add input_player

#doors close + sound
execute if score timer* scp914 matches 40 as @e[tag=door914] at @s positioned ^ ^ ^1 run function scp914:close_doors
execute if score timer* scp914 matches 40 as @e[tag=door914] at @s run playsound cb:scp914.doorclose ambient @a ~ ~ ~ 0.85 1 1

#items.
execute if score timer* scp914 matches 230 as @e[tag=input_item] at @s run function scp914:go
execute if score timer* scp914 matches 230 as @e[tag=input_player] at @s run function scp914:go

#doors open + sound
execute if score timer* scp914 matches 255 as @e[tag=door914] at @s positioned ^ ^ ^1 run function scp914:open_doors


#mode change
execute as @e[tag=mode914] on target unless score start_cd* scp914 matches 1.. run function scp914:change_mode
data remove entity @e[tag=mode914,limit=1] interaction

#start
execute as @e[tag=914start] on target unless score start_cd* scp914 matches 1.. run function scp914:start
data remove entity @e[tag=914start,limit=1] interaction
