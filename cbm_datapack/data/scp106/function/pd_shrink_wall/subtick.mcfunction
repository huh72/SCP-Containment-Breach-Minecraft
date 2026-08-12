# execute if score 106 scp106state matches 0 run scoreboard players remove @s[scores={step_on_shrink_cd=1..}] step_on_shrink_cd 1

#pocket dimension shrink - resize+ while activating
execute store result storage cb:pds scale int 1 run scoreboard players get @s[tag=up] pd_shrink_scale
execute if score @s[tag=up] pd_shrink_scale < max_wall pd_shrink_scale run function scp106:pd_shrink_wall/sizeup with storage cb:pds

#pocket dimension shrink - resize- while deactivating
# execute if score @s[tag=down] pd_shrink_scale matches 20.. run function scp106:pd_shrink/sizedown with storage cb:pds