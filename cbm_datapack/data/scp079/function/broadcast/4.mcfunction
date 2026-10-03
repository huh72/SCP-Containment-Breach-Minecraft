scoreboard players add @s scp079.broadcast4 1

execute if score @s scp079.broadcast4 matches 1 run playsound cb:scp079.broadcast4 ambient @a ~ ~ ~ 1 1 1

execute if score @s scp079.broadcast4 matches 1 run scoreboard players set @s shader.lightFlicker 100
execute if score @s scp079.broadcast4 matches 95 run scoreboard players set @s shader.lightFlicker 0