#g lcz airlock
execute as @e[tag=airlockdoors] at @s run function events:3/subtick

#g broken airlock 
execute as @e[tag=event3_1handler] at @s run function events:3_1/subtick

#g 914 event
execute as @e[tag=aj.door914.root] at @s run function events:2/subtick

#g lcz vent room
execute as @e[tag=ventroomtrigger] at @s run function events:vent/handler

#g scp1048a spawn event in lcz
execute as @e[tag=scp1048spawnpoint] at @s run function events:scp1048a_0/handler

#g 049's chamber event
execute if score .state chamber049.event matches 3 run function events:049/check

execute as @e[tag=lever] if entity @s[tag=generator, tag=up, tag=!proceed] if score .state chamber049.event matches 1 run function events:049/2
execute as @e[tag=lever] if entity @s[tag=elevatorPowerFeed, tag=up, tag=!proceed] if score .state chamber049.event matches 2 run function events:049/3

#g 106's chamber event
function events:106/handler