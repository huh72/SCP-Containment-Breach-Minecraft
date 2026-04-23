execute if score .debug.facing.enabled door.UUID matches 1 run tellraw @a [{"text":"[ ! ] ","color":"white"},{"text":"Door marker's facing direction debug mode is now disabled.","color":"green"}]
execute if score .debug.facing.enabled door.UUID matches 1 run return run scoreboard players set .debug.facing.enabled door.UUID 0
execute if score .debug.facing.enabled door.UUID matches 0 run tellraw @a [{"text":"[ ! ] ","color":"white"},{"text":"Door marker's facing direction debug mode is now enabled.","color":"green"}]
execute if score .debug.facing.enabled door.UUID matches 0 run return run scoreboard players set .debug.facing.enabled door.UUID 1





