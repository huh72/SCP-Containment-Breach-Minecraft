
scoreboard objectives add gate_open_speed dummy
scoreboard objectives add gate_close_speed dummy
scoreboard objectives add gate_interact_cd dummy
scoreboard objectives add gate_global_num dummy
scoreboard objectives add _gate_global_num dummy

execute unless score gate_int_num* var matches 1.. run scoreboard players set gate_int_num* var 1

# timer ()

#close door 
scoreboard players set max* gate_close_speed 60

#open door 
scoreboard players set max* gate_open_speed 60

#door cd
scoreboard players set max* gate_interact_cd 60

#global number (largest number have to be remembered(additional var))
execute unless score max* gate_global_num matches 1.. run scoreboard players set max* gate_global_num 0
