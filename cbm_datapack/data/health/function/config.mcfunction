# config
scoreboard objectives add health dummy
scoreboard players set classd health 100
scoreboard objectives add bleeding dummy
scoreboard objectives add bleeding_damage dummy

execute as @a unless score @s blooddrip_cd matches 0.. run scoreboard players set @s blooddrip_cd 1

#
scoreboard objectives add bleeding_level_up_cd dummy
scoreboard objectives add bleeding_damage_cd dummy
scoreboard objectives add blooddrip_cd dummy
scoreboard objectives add blooddrip dummy
scoreboard players set livetime blooddrip 1200
# scoreboard players set cd bleeding_level_up_cd 400

scoreboard objectives add heartbeatTimer dummy
scoreboard objectives add heartbeatCd dummy
scoreboard players set .max heartbeatCd 20