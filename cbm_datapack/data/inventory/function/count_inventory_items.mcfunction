scoreboard players set @s item_count 0

scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:11b}]}] item_count 1
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:12b}]}] item_count 1
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:13b}]}] item_count 1
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:14b}]}] item_count 1
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:15b}]}] item_count 1

scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:20b}]}] item_count 1
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:21b}]}] item_count 1
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:22b}]}] item_count 1
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:23b}]}] item_count 1
scoreboard players add @s[nbt={Inventory:[{id:"minecraft:paper",Slot:24b}]}] item_count 1

scoreboard players set @s[scores={item_count=10..}] right_click_item 0
execute if entity @s[scores={item_count=10..}] run function inventory:hotbar/set {"text":"Too much items bro."}