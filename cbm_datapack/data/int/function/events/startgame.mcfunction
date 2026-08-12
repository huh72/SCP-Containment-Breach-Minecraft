execute at @n[tag=firstSpawnpoint] as @a run function save_progress:save {"sound":"none"}

function scp173:despawndummy
tag @a add i.tp
execute as @e[tag=i.tp] at @s run tp @s ~14 ~-29 ~-43
tag @a remove i.tp

#173 in vent sound
execute at @n[tag=firstSpawnpoint] run playsound cb:scp173.vent ambient @a ~ ~100 ~ 100 1 1
#full-breach sound
playsound cb:start.breach ambient @a ~ ~ ~ 5 1 1

tag @a add lcz
stopsound @a * cb:zone1.mainambient
execute as @a run function ambient:mainambientz0

kill @e[type=interaction,tag=interaction]

scoreboard players set .status i 11