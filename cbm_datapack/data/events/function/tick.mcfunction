#g lcz airlock
execute as @e[tag=airlockdoors] at @s run function events:3/subtick

#g broken airlock 
execute as @e[tag=event3_1handler] at @s run function events:3_1/subtick

#g 914 event
execute as @e[type=item_display, tag=aj.door914.root] at @s run function events:2/subtick

#g lcz vent room
execute as @e[type=marker, tag=ventroomtrigger] at @s run function events:vent/handler

#g scp1048a spawn event in lcz
execute as @e[type=marker, tag=scp1048spawnpoint] at @s run function events:scp1048a_0/handler

#g 049's chamber event
execute if score .state chamber049.event matches 3 run function events:049/check

execute as @e[type=item_display, tag=lever] if entity @s[tag=generator, tag=up, tag=!proceed] if score .state chamber049.event matches 1 run function events:049/2
execute as @e[type=item_display, tag=lever] if entity @s[tag=elevatorPowerFeed, tag=up, tag=!proceed] if score .state chamber049.event matches 2 run function events:049/3

#g corpse event
execute as @e[type=marker, tag=corpse_event_trigger] at @s run function events:corpse/handler

#g 106's chamber event
function events:106/handler

#g 914 corpse event
execute as @e[type=marker, tag=event.914] at @s as @n[tag=aj.door0.root] if entity @s[tag=frame.17] run function events:914/play

#g hcz str4 event
#g init event
execute as @e[type=marker, tag=str4.event] at @s unless entity @s[tag=encountered] if entity @p[tag=!dead, distance=..9] unless entity @n[tag=106origin] run function events:str4/init
#g handler
execute as @e[type=marker, tag=str4.event] at @s unless score @s event.str4.dummylifetime matches -1 if score @s event.str4.dummylifetime < .remove event.str4.dummylifetime run function events:str4/handler
#g hcz str4 ambient
execute as @e[type=marker, tag=str4.event] at @s run function events:str4/handler0

#g ez elc center event (079_0)
#g note: do not set entity type value here ( lever = makrer || item_display ):
execute as @e[tag=elc.primaryLighting] at @s positioned ~ ~5 ~ if entity @p[tag=!dead, distance=..8] if score .state event.079 matches 0 run function events:scp079/0/lightoff

#g ez elc center event (079_1)
execute as @e[type=marker, tag=event079.trigger] at @s if entity @p[tag=!dead, distance=..6] if score .speech event.079 matches -1 run function events:scp079/1/speech
execute if score .speech event.079 matches 0.. run function events:scp079/1/handler

#g 066 spawn in cafeteria
execute as @n[type=marker, tag=066.spawnpoint] at @s if entity @p[tag=!dead, distance=..14] run function events:066/init