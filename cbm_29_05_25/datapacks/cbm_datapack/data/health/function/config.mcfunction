# config
scoreboard objectives add health dummy
scoreboard players set class_d* health 100
scoreboard objectives add bleeding dummy
scoreboard objectives add b_damage dummy
scoreboard objectives add bdrop_timer dummy

#blooddrop max timer
scoreboard players set max* bdrop_timer 400

#timing, evry sec$1, 
scoreboard objectives add bleeding_cd dummy
scoreboard objectives add bleeding_damage_cd dummy
#
scoreboard players set max_level* bleeding 10
scoreboard players set max* bleeding_cd 200
scoreboard players set max* bleeding_damage_cd 50

#damages
scoreboard players set level1* b_damage 1
scoreboard players set level2* b_damage 1
scoreboard players set level3* b_damage 1
scoreboard players set level4* b_damage 2
scoreboard players set level5* b_damage 2
scoreboard players set level5* b_damage 3
scoreboard players set level6* b_damage 3
scoreboard players set level7* b_damage 4
scoreboard players set level8* b_damage 4
scoreboard players set level9* b_damage 5
scoreboard players set level10* b_damage 5

#blooddrip
scoreboard objectives add blooddrip dummy
