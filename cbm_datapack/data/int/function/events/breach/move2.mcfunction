#setspawnpoint before breach in chamber
execute at @n[tag=i.inGateDetector] as @a run function save_progress:save {"sound":"none"}

rotate @n[tag=dummy] facing entity @p
tp @n[tag=dummy] @p
execute as @n[tag=dummy] at @s run tp @s ^ ^ ^0.75
data modify entity @n[tag=dummy] Pos[1] set from entity @s Pos[1]
execute at @n[tag=dummy] run tp @n[tag=dummy] ~ ~1 ~

playsound cb:scp173.horror ambient @a ~ ~ ~ 1.5 1 1

scoreboard players set .status i 9
scoreboard players set .timer i 1800

tag @n[tag=dummy] add ai