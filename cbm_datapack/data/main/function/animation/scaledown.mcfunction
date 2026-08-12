$attribute @s minecraft:scale base set 0.$(scale)

execute if score @s scaleDeathAnimation >= .min scaleDeathAnimation run scoreboard players operation @s scaleDeathAnimation -= .step scaleDeathAnimation
execute store result storage cb:death scale int 1 run scoreboard players get @s scaleDeathAnimation

# $say [debug]: scale = $(scale)