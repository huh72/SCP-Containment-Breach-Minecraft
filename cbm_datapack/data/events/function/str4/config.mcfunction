scoreboard objectives add event.str4.ambient dummy
scoreboard objectives add event.str4.dummylifetime dummy

scoreboard players set .loop event.str4.ambient 40
scoreboard players set .remove event.str4.dummylifetime 90
scoreboard players set .check event.str4.dummylifetime 45

execute as @e[type=marker, tag=str4.event] unless score @s event.str4.ambient matches 0.. run scoreboard players set @s event.str4.ambient 0
execute as @e[type=marker, tag=str4.event] unless score @s event.str4.dummylifetime matches 0.. run scoreboard players set @s event.str4.dummylifetime -1