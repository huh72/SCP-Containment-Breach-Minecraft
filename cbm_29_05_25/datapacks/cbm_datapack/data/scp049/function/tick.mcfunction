
execute as @a[tag=!dead] at @s run function scp049:kill 

scoreboard players add 049* sound 1
execute at @e[tag=scp049] if score 049* sound matches 400.. run function scp049:sounds