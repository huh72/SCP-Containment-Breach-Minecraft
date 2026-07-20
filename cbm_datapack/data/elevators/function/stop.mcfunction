say stop!
scoreboard players operation _temp ID = @s ID

#'stopping' elevator
execute as @e[type=marker, tag=moving] if score @s ID = _temp ID run tag @s add stopped
tag @e[type=marker, tag=stopped] remove moving
scoreboard players set @e[type=marker, tag=stopped] moveTime -1

#changing floor
scoreboard players remove @e[type=marker, tag=stopped] onLevel 1
scoreboard players operation @e[type=marker, tag=stopped] onLevel *= -1 math
execute as @e[type=marker, tag=stopped] at @s run scoreboard players operation @a[distance=..3.75] onLevel = @s onLevel

execute as @e[type=marker, tag=stopped] at @s if score @s level = @s onLevel as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/resume

#clear
tag @e[type=marker, tag=stopped] remove stopped