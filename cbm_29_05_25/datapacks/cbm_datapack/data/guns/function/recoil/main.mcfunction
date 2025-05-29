

scoreboard players set .1 v 0
$scoreboard players set .0 v $(xa)

scoreboard players set 0 math 0


execute if score .0 v >= 0 math run function guns:recoil/positive with storage minecraft:recoil


execute if score .0 v < 0 math run function guns:recoil/negative with storage minecraft:recoil
