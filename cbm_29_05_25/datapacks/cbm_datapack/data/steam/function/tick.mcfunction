#cough
scoreboard players remove @a[scores={cough_cd=1..}] cough_cd 1

execute as @a[tag=!gasmask] at @s if score @s cough_cd matches 0 if entity @e[tag=cough_point,distance=..4] run function steam:cough

#steam
execute as @e[tag=steam_up] at @s run function steam:up