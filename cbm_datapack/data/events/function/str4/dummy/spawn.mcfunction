execute facing entity @n[tag=str4.event] eyes run function animated_java:scp106/summon with storage aj:temp
execute as @n[tag=aj.scp106.root] run function animated_java:scp106/animations/walk/play

playsound cb:scp106.laugh ambient @a[distance=..16] ~ ~ ~ 1.25 1 1

tag @e[tag=new] remove new

#g set up the timer
scoreboard players set @s event.str4.dummylifetime 0

#g dont let 106 spawn during ongoing event
tag @a remove hitby106
scoreboard players set .canSpawn 106spawnTimer 0
scoreboard players set .timerCanBeIncreased 106spawnTimer 0