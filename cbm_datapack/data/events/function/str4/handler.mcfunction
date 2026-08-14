#g vars
scoreboard players add @s[scores={event.str4.dummylifetime=0..}] event.str4.dummylifetime 1

#g start event - remove 106's dummy
execute if score @s event.str4.dummylifetime = .remove event.str4.dummylifetime run function events:str4/dummy/remove

execute if score @s event.str4.dummylifetime = .check event.str4.dummylifetime if entity @p[tag=!dead, distance=..6] run function events:str4/dummy/triggered

#g 106 move
execute as @n[tag=aj.scp106.root] at @s run function events:str4/dummy/move