scoreboard objectives add playerOnFireTime dummy
scoreboard objectives add dealDamageCd dummy
scoreboard objectives add playerTo457Distance dummy
scoreboard objectives add encounterSoundCd dummy

scoreboard players set .scp457max encounterSoundCd 300
scoreboard players set .scp457max dealDamageCd 10
scoreboard players set .max playerOnFireTime 100

scoreboard objectives add setLightCd dummy
scoreboard players set .max setLightCd 2

scoreboard objectives add fireLoopSound dummy
scoreboard players set .0 fireLoopSound 1
scoreboard players set .1 fireLoopSound 70
scoreboard players set .2 fireLoopSound 139
scoreboard players set .restart fireLoopSound 204

#math for burn shader effect calculating
scoreboard players set 40 math 40