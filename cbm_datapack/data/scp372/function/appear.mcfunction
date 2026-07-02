tag @s add flying

tag @r[tag=!dead] add scp372.target

execute store result score .random scp372.flyDir run random value 0..3 cb:scp372.random

execute if score .random scp372.flyDir matches 0 run function scp372:appear/0
execute if score .random scp372.flyDir matches 1 run function scp372:appear/1
execute if score .random scp372.flyDir matches 2 run function scp372:appear/2
execute if score .random scp372.flyDir matches 3 run function scp372:appear/3

scoreboard players set .temp scp372.playerSpotTimer 0