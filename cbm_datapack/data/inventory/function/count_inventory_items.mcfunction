scoreboard players set @s item_count 0

execute if items entity @s container.11 minecraft:paper run scoreboard players add @s item_count 1
execute if items entity @s container.12 minecraft:paper run scoreboard players add @s item_count 1
execute if items entity @s container.13 minecraft:paper run scoreboard players add @s item_count 1
execute if items entity @s container.14 minecraft:paper run scoreboard players add @s item_count 1
execute if items entity @s container.15 minecraft:paper run scoreboard players add @s item_count 1

execute if items entity @s container.20 minecraft:paper run scoreboard players add @s item_count 1
execute if items entity @s container.21 minecraft:paper run scoreboard players add @s item_count 1
execute if items entity @s container.22 minecraft:paper run scoreboard players add @s item_count 1
execute if items entity @s container.23 minecraft:paper run scoreboard players add @s item_count 1
execute if items entity @s container.24 minecraft:paper run scoreboard players add @s item_count 1

scoreboard players set @s[scores={item_count=10..}] right_click_item 0
execute if entity @s[scores={item_count=10..}] run function inventory:hotbar/set {"text":"Too much items bro."}