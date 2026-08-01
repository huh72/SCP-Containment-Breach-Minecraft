execute if score @s vent.event matches 0.. run scoreboard players add @s vent.event 1

#g trigger
execute if entity @p[tag=!dead, distance=..8] if entity @s[tag=!enabled] run function events:vent/on

execute if score @s vent.event = .on vent.event run playsound cb:eventvent.fan ambient @a[distance=..24] ~ ~5 ~ 1.5 1 1 
execute if score @s vent.event = .off vent.event run playsound cb:eventvent.fanoff ambient @a[distance=..32] ~ ~5 ~ 2 1 1 
execute if score @s vent.event = .stop vent.event run function events:vent/off