scoreboard objectives add rage dummy
scoreboard objectives add phrase dummy
scoreboard objectives add door_open_cd dummy
scoreboard players set max door_open_cd 100

scoreboard objectives add chamber049.ambientTimer dummy
scoreboard players set .max chamber049.ambientTimer 767

scoreboard objectives add chamber049.event dummy

scoreboard objectives add scp714timer dummy
scoreboard players set .max scp714timer 150
execute as @a unless score @s scp714timer matches 0.. run scoreboard players set @s scp714timer 0

# default - 0
# lights is off = 1
# generator is on = 2
# elevators is on = 3
# 049 encountered = 4

execute as @a unless score @s chamber049.ambientTimer matches 0.. run scoreboard players set @s chamber049.ambientTimer -1
execute unless score .state chamber049.event matches 0.. run scoreboard players set .state chamber049.event 0