$summon block_display ~ ~ ~ {Tags:['bullet_hole','new'],block_state:{Name:"minecraft:$(block)",Properties:{}},transformation:[$(transformation)]}
$tp @e[tag=new] ~ ~ ~ $(RotX) $(RotY)



#
scoreboard players set @e[tag=new] bullet_hole_live_time 0
scoreboard players operation @e[tag=new] num_hole = max num_hole
scoreboard players add @e[tag=new] num_hole 1

execute if score max num_hole < max b_hole run scoreboard players add max num_hole 1
execute if score max num_hole >= max b_hole run function guns:bullet_hole/clear1

#Upping the hole
execute at @e[tag=new] if block ~ ~0.2 ~ #raycast:air run tp @e[tag=new] ~ ~ ~ ~ ~90

tag @e remove new
# /summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:black_concrete",Properties:{}},transformation:[0.125f,0f,0f,0f,0f,0.125f,0f,0f,0f,0f,0.0011f,0f,0f,0f,0f,1f]}]}