#current objectives (for future updates?)
scoreboard objectives add objective dummy
scoreboard objectives add mtf dummy

scoreboard players set _health mtf 175
scoreboard players set _look_check_cd mtf 12
scoreboard players set _anger_time mtf 25
scoreboard players set _cd_spot_cd mtf 300

#time til mtf will start shooting after detecting a player
scoreboard objectives add player_on_reticle dummy
scoreboard players set max player_on_reticle 35

#sounds vars
scoreboard objectives add breath_cd dummy
scoreboard players set max breath_cd 80
scoreboard objectives add beep_cd dummy

scoreboard objectives add classdDetect dummy
scoreboard players set max classdDetect 120