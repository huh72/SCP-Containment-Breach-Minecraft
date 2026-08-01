execute as @n[type=pig, tag=scp1048origin] at @s run tp @s ~ ~35 ~
kill @n[type=pig, tag=scp1048origin]
execute as @n[type=item_display,tag=scp1048] run function animated_java:scp1048/remove/this

scoreboard players set .canSpawn 1048spawnTimer 0
scoreboard players set .timerCanBeIncreased 1048spawnTimer 0
scoreboard players set . 1048spawnTimer 0