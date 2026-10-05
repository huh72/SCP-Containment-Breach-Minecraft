summon wandering_trader ~ ~ ~ {Tags:['cis', 'mtf_enemy', '008_enemy', 'hit', 'elevator_target', 'tesla_trigger', 'canOpenDoors', 'new'],Invulnerable:1b,Silent:1b,PersistenceRequired:1b}

#g init origin
effect give @n[type=wandering_trader, tag=new] invisibility infinite 1 true
effect give @n[type=wandering_trader, tag=new] regeneration infinite 10 true

attribute @n[type=wandering_trader, tag=new] movement_speed base set 0.6
attribute @n[type=wandering_trader, tag=new] jump_strength base set 0
attribute @n[type=wandering_trader, tag=new] step_height base set 1

scoreboard players set @n[type=wandering_trader, tag=new] breath_cd 1
scoreboard players operation @n[type=wandering_trader, tag=new] health = _health ci
scoreboard players set @n[type=wandering_trader, tag=new] shot_cd 60
scoreboard players set look_check_cd ci 60
scoreboard players set cd_spot_cd ci 1
scoreboard players set anger_time ci 0

#g spawn model (align in handler)
execute rotated 0 0 run function animated_java:cisolder/summon with storage aj:temp

tag @n[type=wandering_trader, tag=new] remove new