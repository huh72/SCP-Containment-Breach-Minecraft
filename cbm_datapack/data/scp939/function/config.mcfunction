#hit vars
scoreboard objectives add hit_cd dummy
scoreboard objectives add attack_cd dummy

scoreboard players set .max attack_cd 80
scoreboard players set max* hit_cd 30
scoreboard players set scp939 damage 30

#movement detect
scoreboard objectives add walk minecraft.custom:walk_one_cm

#lure & alert
scoreboard objectives add phrase_cd dummy
scoreboard objectives add alert_cd dummy
scoreboard objectives add chase_cd dummy

#movement staff
scoreboard objectives add speed_level dummy
scoreboard objectives add 939rotY dummy

#spot levels
scoreboard objectives add spot_level dummy

scoreboard objectives add 939posX dummy
scoreboard objectives add 939posZ dummy