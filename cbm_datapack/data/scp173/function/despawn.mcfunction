kill @e[tag=scp173]
kill @e[tag=scp173_playermarker]
kill @e[tag=scp173_marker]
execute as @n[tag=shulker_hitbox] at @s run tp @s ~ ~ ~
kill @n[tag=shulker_hitbox]

scoreboard players set .canSpawn 173spawnTimer 1
scoreboard players set .timerCanBeIncreased 173spawnTimer 1
scoreboard players set . 173spawnTimer 0
scoreboard players set .173 despawnTimer 0

function scps:spawnsystem/getnumebr/loop/173 with storage cb:scpspawn