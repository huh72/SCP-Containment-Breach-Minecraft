summon zombie ~ ~ ~ {Tags:['scp457', 'new', 'elevatorTarget', 'canOpenDoors'],Silent:1b,Invulnerable:1b,PersistenceRequired:1b}

effect give @n[tag=scp457, tag=new] invisibility infinite 1 true
attribute @n[tag=scp457, tag=new] attack_damage base set 0
attribute @n[tag=scp457, tag=new] movement_speed base set 0.225
scoreboard players set .scp457 setLightCd 10
scoreboard players set .scp457 fireLoopSound 10
scoreboard players set .scp457 dealDamageCd 100
scoreboard players set .scp457 encounterSoundCd 20

execute rotated 0 0 run function animated_java:scp457/summon with storage aj:temp

scoreboard players set .canSpawn 457spawnTimer 0
scoreboard players set .timerCanBeIncreased 457spawnTimer 0
scoreboard players set .457 despawnTimer 0

tag @n[tag=new] remove new