# function animated_java:scp106/remove/all
# scoreboard players set 106 hunting -1

execute positioned ~ ~-10 ~ rotated 0 0 run function animated_java:scp106/summon with storage aj:temp
tag @a remove hitby106

scoreboard players set .canSpawn 106spawnTimer 0
scoreboard players set .timerCanBeIncreased 106spawnTimer 0

function scp106:appear/0