scoreboard players remove @s[scores={horror_cd=1..}] horror_cd 1

execute if score look_on_173y v matches 1.. if score @s horror_cd matches 0 run playsound cb:scp173.horror ambient @s[tag=can_see_173] ~ ~1000 ~ 100 1 1
execute if score look_on_173y v matches 1.. if score @s horror_cd matches 0 run scoreboard players operation @s[tag=can_see_173] horror_cd = max horror_cd
