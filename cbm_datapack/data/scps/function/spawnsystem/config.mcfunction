#r ============= SCPS ================

#g *** some scps will be despawned after being x blocks away from player for y time

#p after events/+ on a timer:
#g 106: first: 14-20 mins, following: 12-17 mins
#g 173: first: 4-7, following: 5-6 || despawn
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

scoreboard objectives add 106spawnTimer dummy
scoreboard objectives add 049spawnTimer dummy
scoreboard objectives add 173spawnTimer dummy
scoreboard objectives add 457spawnTimer dummy
# scoreboard objectives add 096spawnTimer dummy
scoreboard objectives add 1048spawnTimer dummy
scoreboard objectives add 650spawnTimer dummy

#g SCP-106
# this should be set to 1 after breach
scoreboard players set .timerCanBeIncreased 106spawnTimer 0
scoreboard players set .canSpawn 106spawnTimer 0


# scoreboard players set .firstSpawnMin 106spawnTimer 14 min
# scoreboard players set .firstSpawnMax 106spawnTimer 20 min

# scoreboard players set .SpawnMin 106spawnTimer 12 min
# scoreboard players set .SpawnMax 106spawnTimer 17 min