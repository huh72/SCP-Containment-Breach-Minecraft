playsound cb:scp106.laugh ambient @a[distance=..16] ~ ~ ~ 1.25 1 1

kill @n[tag=106origin]
execute as @n[tag=aj.scp106.root] run function animated_java:scp106/remove/this

scoreboard players set .canSpawn 106spawnTimer 1
scoreboard players set .timerCanBeIncreased 106spawnTimer 1