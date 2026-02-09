execute at @n[tag=firstSpawnpoint] as @a run function save_progress:save {"sound":"none"}

function scp173:despawndummy
execute at @n[tag=firstSpawnpoint] run playsound cb:scp173.vent ambient @a ~ ~100 ~ 100 1 1
tag @a add i.tp
execute as @e[tag=i.tp] at @s run tp @s ~14 ~-29 ~-43
tag @a remove i.tp

kill @e[type=interaction,tag=interaction]

scoreboard players set .status i 11