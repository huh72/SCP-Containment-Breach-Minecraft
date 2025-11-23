### horisontal axis - 1, vertical - 0

scoreboard players set tesla axis 0
$scoreboard players set tesla axis $(axis)

#spawn origin + rotation
execute if score tesla axis matches 0 run summon marker ~ ~ ~ {Tags:['tesla_origin','new','0'],Rotation:[0f,0f]}
execute if score tesla axis matches 1 run summon marker ~ ~ ~ {Tags:['tesla_origin','new','1'],Rotation:[90f,0f]}

#vars
scoreboard players operation @e[type=marker, tag=new] tesla_idle = max* tesla_idle
scoreboard players operation @e[type=marker, tag=new] tesla_shock_timer = max* tesla_shock_timer
scoreboard players set @e[type=marker, tag=new] tesla_shock_cd 0
scoreboard players set @e[type=marker, tag=new] activate_cd 0
scoreboard players set @e[type=marker, tag=new] activating 0

tag @e remove new