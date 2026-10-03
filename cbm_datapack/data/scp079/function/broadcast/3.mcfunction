scoreboard players add @s scp079.broadcast3 1

execute if score @s scp079.broadcast3 matches 1 run playsound cb:scp079.broadcast3 ambient @a ~ ~ ~ 1 1 1

execute if score @s scp079.broadcast3 matches 1 run scoreboard players set @s shader.lightFlicker 100
execute if score @s scp079.broadcast3 matches 50 run scoreboard players set @s shader.lightFlicker 0