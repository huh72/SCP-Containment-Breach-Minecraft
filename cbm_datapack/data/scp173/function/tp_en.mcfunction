scoreboard players operation scp173 move_cd = max move_cd

execute positioned ~ ~ ~ run tp @s ~ ~ ~ facing entity @p[tag=can_see_173]
execute at @p run tp @s ~ ~ ~

execute if entity @n[tag=scp173,tag=seen_through_glass] run playsound cb:scp173.glassbreak ambient @a ~ ~ ~ 1 1 1