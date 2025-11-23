summon minecraft:block_display ~ ~ ~ {Tags:['bullet','new'],block_state:{Name:"minecraft:yellow_concrete",Properties:{}},transformation:[0.01f,0f,0f,-0.005f,0f,0.01f,0f,-0.005f,0f,0f,1f,-0.5f,0f,0f,0f,1f]}
$execute positioned ~ ~ ~ run scoreboard players set @n[tag=new] global_num $(bullet_num)
$scoreboard players set @n[tag=new] damage $(damage)
$scoreboard players set @n[tag=new] v $(blood_lost)

# #say
# $say bullet_num in bullet_spawn == $(bullet_num)
# #tellraw
# tellraw @a [{"text":"bulletnum in bullet_spawn TELLRAW ==== "},{"score":{"name":"@s","objective":"global_num"}}]


# /summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:yellow_concrete",Properties:{}},transformation:[0.01f,0f,0f,-0.005f,0f,0.01f,0f,-0.005f,0f,0f,1f,-0.5f,0f,0f,0f,1f]}]}

# /summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:yellow_concrete",Properties:{}},transformation:[0.01f,0f,0f,-0.005f,0f,0.01f,0f,-0.005f,0f,0f,1f,0f,0f,0f,0f,1f]}]}

$tp @e[tag=new] ~ ~ ~ ~$(xb).$(xa) ~$(yb).$(ya)
scoreboard players operation @e[tag=new] bullet_live_time = max bullet_live_time

tag @e[tag=new] remove new