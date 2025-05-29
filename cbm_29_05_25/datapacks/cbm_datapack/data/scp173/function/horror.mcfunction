
scoreboard players remove @s[scores={horror_cd=1..}] horror_cd 1

execute if score player_can_see_173* var matches 1 if score @s horror_cd matches 0 run playsound cb:scp173.horror ambient @s ~ ~1000 ~ 100 1 1
execute if score player_can_see_173* var matches 1 if score @s horror_cd matches 0 run scoreboard players operation @s horror_cd = max* horror_cd
# execute if score @s horror_cd matches 1 run scoreboard players operation @s horror_cd = max* horror_cd 
