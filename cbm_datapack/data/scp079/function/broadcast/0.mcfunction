scoreboard players add @s scp079.broadcast0 1

execute if score @s scp079.broadcast0 matches 3 run scoreboard players set @a shader.brightness 25

execute if score @s scp079.broadcast0 matches 10 run scoreboard players set @a shader.brightness 50
# say @s
# tellraw @a {"score":{"name":"@s","objective":"scp079.broadcast0"}}