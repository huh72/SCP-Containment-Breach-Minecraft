# particle ash
scoreboard players add .temp scp372.iterations 1

execute positioned ~ ~-1.5 ~ if entity @p[distance=..1,tag=!dead] run tag @s add spotedPlayer

execute positioned ^ ^ ^0.33 if block ~ ~ ~ #drop:air if score .temp scp372.iterations < .max scp372.iterations run function scp372:raycast/loop