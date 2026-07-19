# scoreboard players add @s scp079.broadcast0 1

# # execute if score @s scp079.broadcast0 matches 3 run scoreboard players set @a shader.brightness 25
# execute if score @s scp079.broadcast0 matches 8 run particle minecraft:entity_effect{color:[0.996078431372549, 0.9647058823529412, 0.0, 0.984313725490196],scale:1f} ~ ~ ~ ~ ~ ~ 0 1 force @s

# execute if score @s scp079.broadcast0 matches 16 run particle minecraft:entity_effect{color:[0.996078431372549, 0.9647058823529412, 1.0, 0.984313725490196],scale:1f} ~ ~ ~ ~ ~ ~ 0 1 force @s

# # execute if score @s scp079.broadcast0 matches 10 run scoreboard players set @a shader.brightness 50
# execute if score @s scp079.broadcast0 matches 20 run particle minecraft:entity_effect{color:[0.996078431372549, 0.9647058823529412, 0.5, 0.984313725490196],scale:1f} ~ ~ ~ ~ ~ ~ 0 1 force @s

# # say @s
# # tellraw @a {"score":{"name":"@s","objective":"scp079.broadcast0"}}