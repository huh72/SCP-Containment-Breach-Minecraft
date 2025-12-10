scoreboard players operation scp173 move_cd = max move_cd

execute at @s run tp @s ~ ~ ~ facing entity @p[tag=can_see_173]
data modify entity @s Rotation[1] set value 0
data modify entity @s Pos[1] set from entity @p[tag=can_see_173] Pos[1]
execute unless block ~ ~1 ~ #scp173:air run tp @s ~ ~1 ~
execute unless block ~ ~1 ~ #scp173:air run tp @s ~ ~1 ~
execute unless block ~ ~1 ~ #scp173:air run tp @s ~ ~1 ~
execute unless block ~ ~1 ~ #scp173:air run tp @s ~ ~1 ~

execute if entity @n[tag=scp173,tag=seen_through_glass] run playsound cb:scp173.glassbreak ambient @a ~ ~ ~ 1 1 1

execute at @s run tp @s ^ ^ ^5.5

