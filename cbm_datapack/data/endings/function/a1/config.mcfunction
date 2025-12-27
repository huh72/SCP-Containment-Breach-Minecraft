#hide hid's laser
execute at @n[tag=aj.hid_turret.root] run tp @n[tag=aj.hid_laser.root] ~ ~-64 ~

#events timings if present
scoreboard players set .106appear.time e 140
scoreboard players set .announc.time e 255
scoreboard players set .hidShootPrepare.time e 340
scoreboard players set .106stopRotation.time e 360
scoreboard players set .hidShoot.time e 490
scoreboard players set .hidEndShoot.time e 620


scoreboard objectives add gameend dummy
scoreboard players set @a gameend -1

scoreboard players set .cispeech.time gameend 40
scoreboard players set .gameend.time gameend 140