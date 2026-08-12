#smoke particle from vent in "start" room
scoreboard players add .afterbreach i 1

execute if score .afterbreach i matches 1 run function int:events/afterbreach/initscps

execute if score .afterbreach i = .screenshakeOn i run scoreboard players set @a shader.screenshake 100
execute if score .afterbreach i = .screenshakeOff i run scoreboard players set @a shader.screenshake 0

execute if score .afterbreach i = .ambientSounds i run function ambient:ambientz0

execute at @e[tag=p.smokeup] run particle minecraft:campfire_cosy_smoke ~ ~0.25 ~ 0.1 0.35 0.1 0.015 3