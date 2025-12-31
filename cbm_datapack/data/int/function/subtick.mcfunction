scoreboard players add .timer i 1
scoreboard players remove .ambient i 1

execute if score .timer i matches 1 run function int:events/start

execute if score .ambient i matches 0 run function int:ambient