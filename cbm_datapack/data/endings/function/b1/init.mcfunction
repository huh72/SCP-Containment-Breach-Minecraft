scoreboard players set .music.time e 0
execute at @n[tag=b1.mtfspawnpoint] run function mtf:spawn {"NoAI":"1","additionaltag":"surface","rotatedAs":"@n[tag=b1.mtfspawnpoint]"}
scoreboard players set @n[tag=mtf,tag=surface] acc 1000