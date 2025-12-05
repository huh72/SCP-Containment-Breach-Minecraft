scoreboard players remove @s[scores={step_on_shrink_cd=1..}] step_on_shrink_cd 1

#pocket dimension shrink - resize+ while activating
execute if score @s[tag=resizing] pd_shrink_scale < max pd_shrink_scale run function scp106evolution:pd_shrink/resize with storage cb:pds
execute store result storage cb:pds scale int 1 run scoreboard players get @n[type=armor_stand,tag=pds,tag=resizing] pd_shrink_scale
#pocket dimension shrink - resize- while deactivating
execute if score @s[tag=resizing_decrease] pd_shrink_scale matches 0.. run function scp106evolution:pd_shrink/resize_decrease with storage cb:pds
execute store result storage cb:pds scale int 1 run scoreboard players get @n[type=armor_stand,tag=pds,tag=resizing_decrease] pd_shrink_scale

#pocket dimension shrink - summon 106 when triggered
execute at @a[distance=..1] run scoreboard players add @s step_on_shrink 1
execute if score @s step_on_shrink = max step_on_shrink if score @s step_on_shrink_cd matches 0 run function scp106evolution:spawn
execute if score @s step_on_shrink = max step_on_shrink run scoreboard players operation @e[tag=pds] step_on_shrink_cd = max step_on_shrink_cd
execute if score @s step_on_shrink = max step_on_shrink run tag @s add resizing_decrease
execute if score @s step_on_shrink = max step_on_shrink run tag @s add resizing
execute if score @s step_on_shrink = max step_on_shrink run scoreboard players set @e[tag=pds] step_on_shrink 0