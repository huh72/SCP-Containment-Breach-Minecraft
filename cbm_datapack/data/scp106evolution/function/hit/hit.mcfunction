tag @n[tag=106origin] add killed
playsound cb:scp106.kill ambient @a ~ ~ ~ 1 1 1
execute if score 106 scp106state matches 1 run scoreboard players operation 106 106hit_cd = max_a 106hit_cd
execute if score 106 scp106state matches 2 run scoreboard players operation 106 106hit_cd = max_p 106hit_cd
tag @s add hitby106

scoreboard players set @s fallinpdanimation 0