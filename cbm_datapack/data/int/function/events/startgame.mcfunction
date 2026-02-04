execute at @n[tag=firstSpawnpoint] as @a run function save_progress:save {"sound":"none"}

function scp173:despawndummy
playsound cb:scp173.vent ambient @a ~ ~100 ~ 100 1 1
execute as @a at @s run tp @s ~14 ~-29 ~-43

scoreboard players set .status i 11