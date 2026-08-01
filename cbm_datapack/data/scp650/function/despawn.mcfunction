execute as @n[tag=scp650] at @s run tp @s ~ ~25 ~
kill @n[tag=scp650]
execute as @n[tag=aj.scp650.root] run function animated_java:scp650/remove/all

scoreboard players set .canSpawn 650spawnTimer 0
scoreboard players set .timerCanBeIncreased 650spawnTimer 0

scoreboard players set .canSpawn 650spawnTimer 1
scoreboard players set .timerCanBeIncreased 650spawnTimer 1
scoreboard players set . 650spawnTimer 0