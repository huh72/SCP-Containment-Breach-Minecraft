# load
scoreboard objectives add global_num dummy
execute unless score max* global_num matches 0.. run scoreboard players set max* global_num 0