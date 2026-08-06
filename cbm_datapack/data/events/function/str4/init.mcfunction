#g remove same events
tag @e[tag=str4.event] add encountered

execute if entity @s[tag=0] positioned ~ ~ ~7 run function events:str4/dummy/spawn
execute if entity @s[tag=1] positioned ~7 ~ ~ run function events:str4/dummy/spawn