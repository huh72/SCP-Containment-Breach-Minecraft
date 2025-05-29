kill @e[tag=1499_point]

summon marker ~ ~ ~ {Tags:['1499_point','new']}

data modify entity @e[tag=new,limit=1] Rotation set from entity @s Rotation

# scoreboard players operation @e[tag=new] global_num = @s global_num

tag @e remove new