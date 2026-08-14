#fps

tag @s add ini

effect give @s weakness infinite 255 true
effect give @s regeneration infinite 255 true
effect give @s saturation infinite 255 true
attribute @s minecraft:jump_strength base set 0.0004
attribute @s minecraft:movement_speed base set 0.085
attribute @s minecraft:scale base set 1.2
attribute @s minecraft:camera_distance base set 0.0
attribute @s minecraft:step_height base set 0.65
attribute @s minecraft:safe_fall_distance base set 1000
attribute @s minecraft:entity_interaction_range base set 0
scoreboard players operation @s stamina = max stamina
scoreboard players set @s breath_cd 1
scoreboard players set @s item_selected 0
scoreboard players set @s request_cd 0
scoreboard players set @s playerOnFireTime 0
scoreboard players set @s scp714timer 0

scoreboard players set @s fallinpdanimation -1

scoreboard players set @s card_interact_cd 0

#939
scoreboard players set @s chase_cd 0
scoreboard players set @s 939.ambient -1
scoreboard players set @s chamber049.ambientTimer -1

#g death animation setup
scoreboard players set @s deathAnimation -1
scoreboard players set @s respawnCountdown 6

#heartbeat
scoreboard players set @s heartbeatTimer 0
scoreboard players set @s heartbeatCd 0

tag @s add can_ii

tag @s add can_blink
tag @s add tesla_trigger

tag @s add elevatorTarget

scoreboard players operation @s global_num = max* global_num
scoreboard players add @s global_num 1
scoreboard players operation max* global_num = @s global_num
function health:set_health

#radio
scoreboard players set @s channel3_timer -1

#guns vars
scoreboard players set @s ammo 0
scoreboard players set @s shot_cd 0

#doors staff
scoreboard players set @s access_level 0
scoreboard players set @s scanner_value 0