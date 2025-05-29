execute if items entity @s container.11 minecraft:paper run scoreboard players add @s drop_count 1
execute if items entity @s container.12 minecraft:paper run scoreboard players add @s drop_count 1
execute if items entity @s container.13 minecraft:paper run scoreboard players add @s drop_count 1
execute if items entity @s container.14 minecraft:paper run scoreboard players add @s drop_count 1
execute if items entity @s container.15 minecraft:paper run scoreboard players add @s drop_count 1

execute if items entity @s container.20 minecraft:paper run scoreboard players add @s drop_count 1
execute if items entity @s container.21 minecraft:paper run scoreboard players add @s drop_count 1
execute if items entity @s container.22 minecraft:paper run scoreboard players add @s drop_count 1
execute if items entity @s container.23 minecraft:paper run scoreboard players add @s drop_count 1
execute if items entity @s container.24 minecraft:paper run scoreboard players add @s drop_count 1

execute at @s if score @s drop_count matches 1.. run function main:drop_cycle with storage minecraft:drop_pos
