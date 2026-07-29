# say respawn!
tag @s remove dead
tag @s add tesla_trigger
tag @s add hit

tag @s add save_f
execute as @e[type=marker, tag=save] at @s if score @s global_num = @p[tag=save_f] global_num run tp @p[tag=save_f] @s

execute as @n[type=marker, tag=save] if entity @s[tag=save.location.049chamber] run tag @p[tag=save_f] add location.049chamber
execute as @n[type=marker, tag=save] if entity @s[tag=save.location.106chamber] run tag @p[tag=save_f] add location.106chamber
execute as @n[type=marker, tag=save] if entity @s[tag=save.location.939storage] run tag @p[tag=save_f] add location.939storage
execute as @n[type=marker, tag=save] if entity @s[tag=save.location.nuke] run tag @p[tag=save_f] add location.nuke

scoreboard players operation @p[tag=save_f] onLevel = @n[type=marker, tag=save] onLevel
tag @s remove save_f

#vars
function health:reset_health
scoreboard players set @s fall 0
scoreboard players operation @s stamina = max stamina
scoreboard players operation @s blink_timer = max blink_timer

scoreboard players set @s playerOnFireTime 0
scoreboard players set @s playerTo457Distance 0

effect clear @s invisibility
attribute @s minecraft:movement_speed modifier remove 1488-0-0-1-1
function main:death_ui/clear