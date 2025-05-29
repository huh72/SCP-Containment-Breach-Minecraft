$scoreboard players set .1 v $(xa)
scoreboard players operation .1 v *= -1 math
execute store result storage recoil xa int 1 run scoreboard players get .1 v

function guns:recoil/negative0 with storage minecraft:recoil
