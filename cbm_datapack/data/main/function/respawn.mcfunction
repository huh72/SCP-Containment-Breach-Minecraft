# say respawn!
tag @s remove dead
tag @s add tesla_trigger
tag @s add hit
tag @s remove hitby106
tag @s remove fall
tag @s remove fall_into_shrinkhole

tag @s add save_f
execute as @e[type=marker, tag=save] at @s if score @s global_num = @p[tag=save_f] global_num run tp @p[tag=save_f] @s

#g load sub-level
execute as @n[type=marker, tag=save] if entity @s[tag=save.location.049chamber] run tag @p[tag=save_f] add location.049chamber
execute as @n[type=marker, tag=save] if entity @s[tag=save.location.106chamber] run tag @p[tag=save_f] add location.106chamber
execute as @n[type=marker, tag=save] if entity @s[tag=save.location.939storage] run tag @p[tag=save_f] add location.939storage
execute as @n[type=marker, tag=save] if entity @s[tag=save.location.nuke] run tag @p[tag=save_f] add location.nuke

scoreboard players operation @s[tag=location.939chamber] 939.ambient = .loop 939.ambient
scoreboard players operation @s[tag=location.049chamber] chamber049.ambientTimer = .max chamber049.ambientTimer

#g
effect give @s[tag=!location.049chamber] darkness infinite 1 true
effect give @s[tag=!location.nuke] darkness infinite 1 true
effect give @s[tag=!location.106chamber] darkness infinite 1 true
effect give @s[tag=!location.surface] darkness infinite 1 true

#g load level tag
tag @s remove lcz
tag @s remove hcz
tag @s remove ez

stopsound @s * cb:zone1.mainambient
stopsound @s * cb:zone2.mainambient
stopsound @s * cb:zone3.mainambient

stopsound @s * cb:scp939.ambient
stopsound @s * cb:scp049.chamber0

execute as @n[type=marker, tag=save] if entity @s[tag=save.lcz] run tag @p[tag=save_f] add lcz
execute as @n[type=marker, tag=save] if entity @s[tag=save.hcz] run tag @p[tag=save_f] add hcz
execute as @n[type=marker, tag=save] if entity @s[tag=save.ez] run tag @p[tag=save_f] add ez

execute if entity @s[tag=hcz] run function shader_control:effects/yellow/set {"value":"0.075"}
execute if entity @s[tag=ez] run function shader_control:effects/blue/set {"value":"0.075"}

#g play zone ambient
execute if entity @s[tag=lcz, tag=!location.939storage] run scoreboard players set @s zoneambientlcz 1
execute if entity @s[tag=hcz, tag=!location.106chamber, tag=!location.049chamber] run scoreboard players set @s zoneambienthcz 1
execute if entity @s[tag=ez] run scoreboard players set @s zoneambientez 1

scoreboard players operation @p[tag=save_f] onLevel = @n[type=marker, tag=save] onLevel
tag @s remove save_f

#g reset death animation essentials
attribute @s minecraft:scale base set 1.2
attribute @s minecraft:jump_strength base set 0.0004
scoreboard players set @s deathAnimation -1
tag @s remove can_respawn
scoreboard players set @s respawnCountdown 6

#g vars
scoreboard players set @s fallinpdanimation -1

function health:reset_health
scoreboard players set @s fall 0
scoreboard players operation @s stamina = max stamina
scoreboard players operation @s blink_timer = max blink_timer

scoreboard players set @s playerOnFireTime 0
scoreboard players set @s playerTo457Distance 0

effect clear @s invisibility
attribute @s minecraft:movement_speed modifier remove 1488-0-0-1-1
function main:death_ui/clear