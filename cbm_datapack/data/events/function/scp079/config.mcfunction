scoreboard objectives add event.079 dummy
scoreboard objectives add doorControl dummy

execute unless score .speech event.079 matches -3.. run scoreboard players set .speech event.079 -1
execute unless score .state event.079 matches 0.. run scoreboard players set .state event.079 0
execute unless score .state doorControl matches 0.. run scoreboard players set .state doorControl 1

scoreboard players set .speechMax event.079 1100