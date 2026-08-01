execute as @n[tag=aj.scp049.root] run function animated_java:scp049/remove/this
kill @e[tag=scp049]

scoreboard players set .canSpawn 049spawnTimer 1
scoreboard players set .timerCanBeIncreased 049spawnTimer 1
scoreboard players set . 049spawnTimer 0