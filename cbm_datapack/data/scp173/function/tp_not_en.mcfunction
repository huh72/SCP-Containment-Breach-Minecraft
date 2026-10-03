scoreboard players operation scp173 move_cd = max move_cd

# ?
execute unless block ~ ~1 ~ #scp173:air run tp @s ~ ~1 ~
execute unless block ~ ~1 ~ #scp173:air run tp @s ~ ~1 ~
execute unless block ~ ~1 ~ #scp173:air run tp @s ~ ~1 ~
execute unless block ~ ~1 ~ #scp173:air run tp @s ~ ~1 ~

execute if entity @s[tag=seen_through_glass] run playsound cb:scp173.glassbreak ambient @a ~ ~ ~ 1 1 1

# rotate model and origin towards player
rotate @s facing entity @p[tag=can_see_173]
rotate @n[tag=173armor_stand] facing entity @p[tag=can_see_173]

# and tp
tp @s ^ ^ ^5.5
