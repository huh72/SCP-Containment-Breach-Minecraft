say stop!
scoreboard players operation _temp ID = @s ID

#'stopping' elevator
execute as @e[type=marker, tag=moving] if score @s ID = _temp ID run tag @s add stopped
tag @e[type=marker, tag=stopped] remove moving
#adding this tag to detect an elevators that are just stopped to make call cd
tag @e[type=marker, tag=stopped] add onCd

# scoreboard players set @e[type=marker, tag=stopped] moveTime -1

#changing floor
scoreboard players remove @e[type=marker, tag=stopped] onLevel 1
scoreboard players operation @e[type=marker, tag=stopped] onLevel *= -1 math
execute as @e[type=marker, tag=stopped] at @s run scoreboard players operation @a[distance=..3.75] onLevel = @s onLevel

execute as @e[type=marker, tag=stopped] at @s if score @s level = @s onLevel as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/resume

execute as @e[type=marker, tag=stopped] at @s unless score @s level = @s onLevel as @n[tag=elevatorDoors] run playsound cb:elev.beep ambient @a[distance=..24] ~ ~ ~ 0.25 1 1

#clear
tag @e[type=marker, tag=stopped] remove stopped