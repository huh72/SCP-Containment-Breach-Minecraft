
scoreboard players set @s health 100
scoreboard players set @s bleeding 0
scoreboard players operation @s bleeding_cd = max* bleeding_cd
scoreboard players operation @s bleeding_damage_cd = max* bleeding_damage_cd