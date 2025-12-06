execute if score 106 scp106state matches 0 run scoreboard players remove @s[scores={step_on_shrink_cd=1..}] step_on_shrink_cd 1

#pocket dimension shrink - resize+ while activating
execute if score @s[tag=up] pd_shrink_scale < max pd_shrink_scale run function scp106evolution:pd_shrink/sizeup with storage cb:pds

#pocket dimension shrink - resize- while deactivating
execute if score @s[tag=down] pd_shrink_scale matches 20.. run function scp106evolution:pd_shrink/sizedown with storage cb:pds

#pocket dimension shrink - summon 106 when triggered
#add timer until spawn when standing on shrink
execute at @a[distance=..1] if score 106 scp106state matches 0 if score @s step_on_shrink_cd matches 0 run scoreboard players add @s step_on_shrink 1
#summon
execute if score @s step_on_shrink = max step_on_shrink run function scp106evolution:pd_shrink/summon106
