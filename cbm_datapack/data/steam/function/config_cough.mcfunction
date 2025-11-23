
#cough
scoreboard objectives add cough_cd dummy
scoreboard players set max* cough_cd 50

execute as @a at @s unless score @s cough_cd matches 1.. run scoreboard players operation @s cough_cd = max* cough_cd