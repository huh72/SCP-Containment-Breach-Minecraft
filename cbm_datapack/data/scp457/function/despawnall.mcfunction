function scp457:removelight

function animated_java:scp457/remove/all
execute as @e[tag=scp457] at @s run tp @s ~ ~35 ~
kill @e[tag=scp457]

scoreboard players set .canSpawn 457spawnTimer 1
scoreboard players set .timerCanBeIncreased 457spawnTimer 1