execute store result score @s wallRot run data get entity @s Rotation[0]

execute if score @s wallRot matches -45..45 run scoreboard players set @s wallRot 1
execute if score @s wallRot matches 45..135 run scoreboard players set @s wallRot 2

execute if score @s wallRot matches -180..-135 run scoreboard players set @s wallRot 3
execute if score @s wallRot matches 135..180 run scoreboard players set @s wallRot 3

execute if score @s wallRot matches -135..-45 run scoreboard players set @s wallRot 4

tellraw @a [{"score":{"name":"@s","objective":"wallRot"}}]


execute if score @s wallRot matches 1 run tp @s ~ ~ ~ 0 ~
execute if score @s wallRot matches 2 run tp @s ~ ~ ~ 90 ~
execute if score @s wallRot matches 3 run tp @s ~ ~ ~ 180 ~
execute if score @s wallRot matches 4 run tp @s ~ ~ ~ -90 ~
