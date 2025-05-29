summon armor_stand ~ ~ ~ {Tags:['pd_shrink','ps','new','active'],attributes:[{id:"generic.scale",base:0.01f}],NoAI:1b,NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:paper,components:{custom_model_data:37}}]}
# attribute @e[tag=new,limit=1] generic.scale base set 0.01
scoreboard players add @e[tag=new] pd_shrink_scale 1
scoreboard players set @e[tag=new] step_on_shrink 0

tag @e remove new