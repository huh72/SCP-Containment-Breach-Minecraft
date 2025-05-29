summon armor_stand ~ ~-2 ~ {Tags:['scp106','new']}

scoreboard players set @e[tag=new] appear_timer 0
scoreboard players set @e[tag=new] disappear_timer 0
scoreboard players set 106 106hit_cd 20
scoreboard players set 106 breath_cd 0
scoreboard players set 106 wall_cd 50
scoreboard players operation 106 laugh_cd = max laugh_cd
scoreboard players set 106 step_on_shrink_cd 1200
tag @e[tag=new] remove hunting

tag @e[tag=new] remove new