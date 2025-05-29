# say respawn!
tag @s remove dead

tag @s add save_f
execute as @e[tag=save] at @s if score @s global_num = @p[tag=save_f] global_num run tp @p[tag=save_f] @s
tag @s remove save_f

#vars
scoreboard players set @s health 100
scoreboard players set @s bleeding 0
scoreboard players set @s fall 0

effect clear @s invisibility
attribute @s minecraft:generic.movement_speed modifier remove 1488-0-0-1-1
function main:death_ui.mcfunction/clear