# playsound cb:scp106.breath ambient @a
scoreboard players add 106 disappear_timer 1
scoreboard players set 106 laugh_cd 0
execute at @e[tag=scp106] positioned ~ ~ ~ run function scp106:pd_shrink/spawn
tag @s remove hunting
scoreboard players set @s hunting 0
stopsound @a ambient cb:scp106.chase