# say respawn!
tag @s remove dead
tag @s add tesla_trigger
tag @s add hit

tag @s add save_f
execute as @e[tag=save] at @s if score @s global_num = @p[tag=save_f] global_num run tp @p[tag=save_f] @s
tag @s remove save_f

#vars
function health:reset_health
scoreboard players set @s fall 0
scoreboard players operation @s stamina = max stamina
scoreboard players operation @s blink_timer = max blink_timer

effect clear @s invisibility
attribute @s minecraft:movement_speed modifier remove 1488-0-0-1-1
function main:death_ui.mcfunction/clear