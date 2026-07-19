#burn effect shader:
# formula :: playerOnFireTime (if > 100 => 100) // 2 => shader.burn
scoreboard players operation @s shader.burn = @s playerOnFireTime
execute if score @s shader.burn > 100 math run scoreboard players set @s shader.burn 100
# scoreboard players operation @s shader.burn += 40 math
scoreboard players operation @s shader.burn /= 2 math