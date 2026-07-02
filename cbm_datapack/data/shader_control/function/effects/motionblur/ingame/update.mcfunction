# execute store result score @s shader.playerX run data get entity @s Rotation[0]
# execute store result score @s shader.playerY run data get entity @s Rotation[1]

# scoreboard players operation @s shader.playerX.prev -= @s shader.playerX
# scoreboard players operation @s shader.playerY.prev -= @s shader.playerY
# execute if score @s shader.playerX.prev matches ..-1 run scoreboard players operation @s shader.playerX.prev *= -1 math
# execute if score @s shader.playerY.prev matches ..-1 run scoreboard players operation @s shader.playerY.prev *= -1 math


# scoreboard players operation @s shader.playerX.prev += @s shader.playerY.prev 
# scoreboard players operation @s shader.playerX.prev *= 2 math

# execute if score @s shader.playerX.prev matches 100.. run scoreboard players set @s shader.playerX.prev 100
 
#scoreboard players operation @s shader.motionblur = @s shader.playerX.prev

# #rewriting
# scoreboard players operation @s shader.playerX.prev = @s shader.playerX
# scoreboard players operation @s shader.playerY.prev = @s shader.playerY