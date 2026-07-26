$execute if entity @s[tag=1] positioned ~ ~-4 ~2 run place template $(room)1
$execute if entity @s[tag=2] positioned ~2 ~-4 ~ run place template $(room)2

execute as @n[tag=storeroom.gateSpawnpoint] at @s if entity @s[tag=r0] rotated 90 0 run function animated_java:gate/summon with storage aj:temp
execute as @n[tag=storeroom.gateSpawnpoint] at @s if entity @s[tag=r1] rotated 0 0 run function animated_java:gate/summon with storage aj:temp

kill @n[tag=storeroom.gateSpawnpoint]
kill @s