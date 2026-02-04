#visuals
# execute if predicate generation:10 run particle happy_villager ~ ~ ~

#stop if raycast hit the block
execute unless block ~ ~ ~ #int:air run scoreboard players set .air v 0

#detect if reach the player
execute positioned ~ ~-1 ~ as @p[distance=..1.5] run tag @s add seeDummyDirectly