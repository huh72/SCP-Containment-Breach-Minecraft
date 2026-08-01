#smoke particle from vent in "start" room
scoreboard players add .afterbreach i 1

execute if score .afterbreach i matches 1 run scoreboard players set .timerCanBeIncreased 106spawnTimer 1
execute if score .afterbreach i matches 1 run scoreboard players set .canSpawn 106spawnTimer 1

execute if score .afterbreach i matches 1 run scoreboard players set .timerCanBeIncreased 173spawnTimer 1
execute if score .afterbreach i matches 1 run scoreboard players set .canSpawn 173spawnTimer 1

execute if score .afterbreach i matches 1 run scoreboard players set .timerCanBeIncreased 650spawnTimer 1
execute if score .afterbreach i matches 1 run scoreboard players set .canSpawn 650spawnTimer 1

execute if score .afterbreach i matches 1 run scoreboard players set .timerCanBeIncreased 457spawnTimer 1
execute if score .afterbreach i matches 1 run scoreboard players set .canSpawn 457spawnTimer 1

execute if score .afterbreach i matches 1 run scoreboard players set .timerCanBeIncreased 1048spawnTimer 1
execute if score .afterbreach i matches 1 run scoreboard players set .canSpawn 1048spawnTimer 1

execute if score .afterbreach i = .screenshakeOn i run scoreboard players set @a shader.screenshake 100
execute if score .afterbreach i = .screenshakeOff i run scoreboard players set @a shader.screenshake 0

execute if score .afterbreach i = .ambientSounds i run function ambient:ambientz0

execute at @e[tag=p.smokeup] run particle minecraft:campfire_cosy_smoke ~ ~0.25 ~ 0.1 0.35 0.1 0.015 3