summon armor_stand ~ ~ ~ {Tags:['pd_shrink0','ps','new','active'],attributes:[{id:"generic.scale",base:0.01f}],NoAI:1b,NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:paper,components:{custom_model_data:38}}]}
scoreboard players add @e[tag=new] pd_shrink_scale 1

data modify entity @e[tag=new,limit=1] Rotation[0] set from entity @e[tag=scp106,limit=1] Rotation[0]
scoreboard players operation 106 wall_cd = max wall_cd
execute as @e[tag=new] at @s run function scp106:wall/rot_correction

# tag @e remove new

# particle angry_villager ~ ~ ~ 0.1 0.1 0.1 0 100 force @a