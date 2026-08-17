#g vars : spawn
execute if score .timerCanBeIncreased 106spawnTimer matches 1 if score . 106spawnTimer < .request 106spawnTimer if score .106 isContained matches 0 unless entity @a[tag=location.939storage] unless entity @a[tag=location.049chamber] unless entity @a[tag=location.106chamber] unless entity @a[tag=location.pocketDimension] unless score .speech event.079 matches 0..1099 run scoreboard players add . 106spawnTimer 1
execute if score .timerCanBeIncreased 173spawnTimer matches 1 if score . 173spawnTimer < .request 173spawnTimer if score .173 isContained matches 0 run scoreboard players add . 173spawnTimer 1
execute if score .timerCanBeIncreased 650spawnTimer matches 1 if score . 650spawnTimer < .request 650spawnTimer run scoreboard players add . 650spawnTimer 1
execute if score .timerCanBeIncreased 457spawnTimer matches 1 if score . 457spawnTimer < .request 457spawnTimer run scoreboard players add . 457spawnTimer 1
execute if score .timerCanBeIncreased 049spawnTimer matches 1 if score . 049spawnTimer < .request 049spawnTimer if score .049 isContained matches 0 run scoreboard players add . 049spawnTimer 1
execute if score .timerCanBeIncreased 1048spawnTimer matches 1 if score . 1048spawnTimer < .request 1048spawnTimer run scoreboard players add . 1048spawnTimer 1
#g : despawn
# execute if score .timerCanBeIncreased 106spawnTimer matches 1 if score * 106spawnTimer < .request 106spawnTimer run scoreboard players add * 106spawnTimer 1
execute at @n[tag=scp173] as @p[tag=!dead] unless entity @s[distance=..64] run scoreboard players add .173 despawnTimer 1
# execute if score .timerCanBeIncreased 650spawnTimer matches 1 if score * 650spawnTimer < .request 650spawnTimer run scoreboard players add * 650spawnTimer 1
execute at @n[tag=scp457] as @p[tag=!dead] unless entity @s[distance=..64] run scoreboard players add .457 despawnTimer 1
execute at @n[tag=scp049] as @p[tag=!dead] unless entity @s[distance=..64] run scoreboard players add .049 despawnTimer 1
execute at @n[tag=scp1048] as @p[tag=!dead] unless entity @s[distance=..64] run scoreboard players add .1048 despawnTimer 1

#g spawn
execute if score . 106spawnTimer = .request 106spawnTimer if score .canSpawn 106spawnTimer matches 1 at @r[tag=!dead] run function scp106:spawn
execute if score . 173spawnTimer = .request 173spawnTimer if score .canSpawn 173spawnTimer matches 1 run function scps:spawnsystem/findwaypoint {"scp":"173"}
execute if score . 650spawnTimer = .request 650spawnTimer if score .canSpawn 650spawnTimer matches 1 run function scp650:spawn
execute if score . 457spawnTimer = .request 457spawnTimer if score .canSpawn 457spawnTimer matches 1 run function scps:spawnsystem/findwaypoint {"scp":"457"}
execute if score . 049spawnTimer = .request 049spawnTimer if score .canSpawn 049spawnTimer matches 1 run function scps:spawnsystem/findwaypoint {"scp":"049"}
execute if score . 1048spawnTimer = .request 1048spawnTimer if score .canSpawn 1048spawnTimer matches 1 run function scps:spawnsystem/findwaypoint {"scp":"1048"}

#g despawn (timer)
# execute if score * 106spawnTimer = .request 106spawnTimer if score .canSpawn 106spawnTimer matches 1 at @r run function scp106:spawn
execute if score .173 despawnTimer = .despawnRequest despawnTimer run function scp173:despawn
# execute if score * 650spawnTimer = .request 650spawnTimer if score .canSpawn 650spawnTimer matches 1 run function scp650:spawn
execute if score .457 despawnTimer = .despawnRequest despawnTimer run function scp457:despawnall
execute if score .049 despawnTimer = .despawnRequest despawnTimer run function scp049:despawn
execute if score .1048 despawnTimer = .despawnRequest despawnTimer run function scp1048:despawn

#g despawn (quick)
execute at @n[tag=scp173] as @p[tag=!dead] unless entity @s[distance=..128] run function scp173:despawn
execute at @n[tag=scp457] as @p[tag=!dead] unless entity @s[distance=..128] run function scp457:despawnall
execute at @n[tag=scp049] as @p[tag=!dead] unless entity @s[distance=..128] run function scp049:despawn
execute at @n[tag=scp1048] as @p[tag=!dead] unless entity @s[distance=..128] run function scp1048:despawn