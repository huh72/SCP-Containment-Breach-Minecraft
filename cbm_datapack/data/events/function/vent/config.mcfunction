scoreboard objectives add vent.event dummy

scoreboard players set .on vent.event 30
scoreboard players set .off vent.event 75
scoreboard players set .stop vent.event 150

execute as @e[tag=ventroomtrigger] unless score @s vent.event matches -1.. run scoreboard players set @s vent.event -1