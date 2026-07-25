execute as @e[tag=airlockdoors] at @s run function events:3/subtick

execute as @e[tag=event3_1handler] at @s run function events:3_1/subtick

execute as @e[tag=aj.door914.root] at @s run function events:2/subtick

execute if score .state chamber049.event matches 3 run function events:049/check
execute as @e[tag=lever] if entity @s[tag=generator, tag=up, tag=!proceed] if score .state chamber049.event matches 1 run function events:049/2
execute as @e[tag=lever] if entity @s[tag=elevatorPowerFeed, tag=up, tag=!proceed] if score .state chamber049.event matches 2 run function events:049/3