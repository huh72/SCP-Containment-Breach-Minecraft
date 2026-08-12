#r ============= SCPS ================

#g *** some scps will be despawned after being x blocks away from player for y time

#p after events/+ on a timer:
#g 106: first: 14-20 mins, following: 12-17 mins
#g 173: first: 4-7, following: 5-6
#g 650: first: 8-12, following: 2-5
#g 457: first: 16-25, following: 9-12
#g 049: after lcz el_room: every: 8-18
#g 096: after hcz server_room: every: 22-40
#g 1048: every: 20-28

#p after events/ in special places:
#g 1048a: in special points
#g 372: already done
#g 066: in scpecial points
#g 939: in scpecial points
#g 008: after special events
#g 1499_1: in 1499 dimension
#g 079: in its chamber

#r ============ VARS ==================

scoreboard objectives add despawnTimer dummy
scoreboard objectives add spawnTimer dummy
scoreboard objectives add 106spawnTimer dummy
scoreboard objectives add 049spawnTimer dummy
scoreboard objectives add 173spawnTimer dummy
scoreboard objectives add 457spawnTimer dummy
# scoreboard objectives add 096spawnTimer dummy
scoreboard objectives add 1048spawnTimer dummy
scoreboard objectives add 650spawnTimer dummy

#g SCP-106 ============================================================
# this should be set to 1 after breach
execute unless score .timerCanBeIncreased 106spawnTimer matches 0..1 run scoreboard players set .timerCanBeIncreased 106spawnTimer 0
execute unless score .canSpawn 106spawnTimer matches 0..1 run scoreboard players set .canSpawn 106spawnTimer 0

#g timings
data modify storage cb:scpspawn firstSpawnMin106 set value 16800
data modify storage cb:scpspawn firstSpawnMax106 set value 24000

data modify storage cb:scpspawn SpawnMin106 set value 14400
data modify storage cb:scpspawn SpawnMax106 set value 20400


#g 173 ============================================================
execute unless score .timerCanBeIncreased 173spawnTimer matches 0..1 run scoreboard players set .timerCanBeIncreased 173spawnTimer 0
execute unless score .canSpawn 173spawnTimer matches 0..1 run scoreboard players set .canSpawn 173spawnTimer 0

#g timings
data modify storage cb:scpspawn firstSpawnMin173 set value 16800
data modify storage cb:scpspawn firstSpawnMax173 set value 24000

data modify storage cb:scpspawn SpawnMin173 set value 6000
data modify storage cb:scpspawn SpawnMax173 set value 10800


#g 650 ============================================================
execute unless score .timerCanBeIncreased 650spawnTimer matches 0..1 run scoreboard players set .timerCanBeIncreased 650spawnTimer 0
execute unless score .canSpawn 650spawnTimer matches 0..1 run scoreboard players set .canSpawn 650spawnTimer 0

#g timings
data modify storage cb:scpspawn firstSpawnMin650 set value 9600
data modify storage cb:scpspawn firstSpawnMax650 set value 14400

data modify storage cb:scpspawn SpawnMin650 set value 2400
data modify storage cb:scpspawn SpawnMax650 set value 6000


#g 457 ============================================================
execute unless score .timerCanBeIncreased 457spawnTimer matches 0..1 run scoreboard players set .timerCanBeIncreased 457spawnTimer 0
execute unless score .canSpawn 457spawnTimer matches 0..1 run scoreboard players set .canSpawn 457spawnTimer 0

#g timings
data modify storage cb:scpspawn firstSpawnMin457 set value 19200
data modify storage cb:scpspawn firstSpawnMax457 set value 30000

data modify storage cb:scpspawn SpawnMin457 set value 10800
data modify storage cb:scpspawn SpawnMax457 set value 14400

#g 049 ============================================================
execute unless score .timerCanBeIncreased 049spawnTimer matches 0..1 run scoreboard players set .timerCanBeIncreased 049spawnTimer 0
execute unless score .canSpawn 049spawnTimer matches 0..1 run scoreboard players set .canSpawn 049spawnTimer 0

#g timings
data modify storage cb:scpspawn SpawnMin049 set value 9600
data modify storage cb:scpspawn SpawnMax049 set value 21600

#g 096 ============================================================



#g 1048 ============================================================
execute unless score .timerCanBeIncreased 1048spawnTimer matches 0..1 run scoreboard players set .timerCanBeIncreased 1048spawnTimer 0
execute unless score .canSpawn 1048spawnTimer matches 0..1 run scoreboard players set .canSpawn 1048spawnTimer 0

#g timings
data modify storage cb:scpspawn SpawnMin1048 set value 24000
data modify storage cb:scpspawn SpawnMax1048 set value 33600

#g set despawn timer
scoreboard players set .despawnRequest despawnTimer 600