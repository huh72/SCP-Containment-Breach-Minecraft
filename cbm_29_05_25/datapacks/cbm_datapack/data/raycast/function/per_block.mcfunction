execute if predicate raycast:20 run particle minecraft:composter ~ ~ ~ 0 0 0 0 1 force

execute if block ~ ~ ~ #raycast:partial run function raycast:partial

scoreboard players remove .itt raycast 1

execute if score .itt raycast matches 1.. if block ~ ~ ~ #raycast:air positioned ^ ^ ^0.25 run function raycast:per_block
