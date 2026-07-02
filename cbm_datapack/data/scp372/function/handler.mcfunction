scoreboard players remove @s[scores={scp372.appearTimer=0..}] scp372.appearTimer 1
execute if entity @s[tag=spotedPlayer] run scoreboard players add .temp scp372.playerSpotTimer 1

execute if entity @s[tag=flying] run function scp372:fly

execute if score @s scp372.appearTimer matches 0 run function scp372:appear

execute if score .temp scp372.playerSpotTimer = .max scp372.playerSpotTimer run function scp372:disappear