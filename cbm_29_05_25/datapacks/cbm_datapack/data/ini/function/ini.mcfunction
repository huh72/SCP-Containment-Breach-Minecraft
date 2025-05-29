
tag @s add ini
#summon interaction ~ ~ ~ {Tags:['player_int','new']}
scoreboard players operation @s global_num = max* global_num
scoreboard players add @s global_num 1
scoreboard players operation max* global_num = @s global_num
function health:set_health

#guns vars
scoreboard players set @s ammo 0
scoreboard players set @s shot_cd 0

scoreboard players set @s access_level 0

#scoreboard players operation @e[tag=new] global_num = @s global_num
#tag @e remove new
