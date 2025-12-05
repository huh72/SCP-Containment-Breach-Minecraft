playsound cb:scp106.laugh ambient @a ~ ~ ~ 1 1 1

execute if score 106 scp106state matches 0..1 run scoreboard players operation 106 laugh_cd = max_a laugh_cd
execute if score 106 scp106state matches 2 run scoreboard players operation 106 laugh_cd = max_p laugh_cd