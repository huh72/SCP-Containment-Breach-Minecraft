scoreboard players add @s scp079.broadcast5 1

execute if score @s scp079.broadcast5 matches 1 run playsound cb:scp079.broadcast5 ambient @a ~ ~ ~ 1 1 1

execute if score @s scp079.broadcast5 matches 1 run scoreboard players set @s shader.lightFlicker 100
execute if score @s scp079.broadcast5 matches 120 run scoreboard players set @s shader.lightFlicker 0