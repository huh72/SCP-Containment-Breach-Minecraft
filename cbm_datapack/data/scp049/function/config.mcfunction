scoreboard objectives add rage dummy
scoreboard objectives add phrase dummy
scoreboard objectives add door_open_cd dummy
scoreboard players set max door_open_cd 100

scoreboard objectives add chamber049.ambientTimer dummy
scoreboard players set .max chamber049.ambientTimer 767

scoreboard objectives add chamber049.event dummy

# default - 0
# lights is off = 1
# generator is on = 2
# elevators is on = 3
# 049 encountered = 4

execute as @a unless score @s chamber049.ambientTimer matches 0.. run scoreboard players set @s chamber049.ambientTimer -1
execute unless score .state chamber049.event matches 0.. run scoreboard players set .state chamber049.event 0