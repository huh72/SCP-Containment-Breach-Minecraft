# execute at @e[type=marker, tag=elevator] positioned ~ ~0.25 ~ run particle flame
# execute at @e[type=marker, tag=currElevator] positioned ~ ~0.35 ~ run particle happy_villager
# execute at @e[type=marker, tag=finalElevator] positioned ~ ~0.45 ~ run particle damage_indicator

#detect if player is inside the elevator
tag @e remove insideElevator
execute as @e[type=marker, tag=elevator] at @s as @e[distance=..3.75, tag=!elevator] run tag @s add insideElevator

#elevator interactions subtick
execute as @a[tag=!dead] at @s as @e[type=item_display, tag=elevatorDoors, distance=..5] at @s run function elevators:interactions/subtick

#
execute as @e[type=marker, tag=elevator] at @s run function elevators:handler

tag @a remove canCallElevator
scoreboard players set @a elevatorRightClick 0

#new elevator handler
execute as @e[type=marker, tag=elevator, tag=new] at @s run tellraw @a [{"text":"[ ! ]","color":"white"},{"text":" A new elevator detected! Don't forget to initialize it's tags and variables THROUGH vscode! (IDs, level(that marker level), onLevel(Virtual elevator's level), tags, check doors rotation tags)","color":"yellow"}]
execute as @e[type=marker, tag=elevator, tag=new] run tag @s remove new