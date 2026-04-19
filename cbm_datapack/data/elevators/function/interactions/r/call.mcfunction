scoreboard players operation _temp ID = @s ID
tag @s add _exclude

execute as @e[tag=elevator] if score @s ID = _temp ID run tag @s add moving

# execute as @a[distance=..3.75] run playsound cb:elev.move ambient @a ~ ~ ~ 1 1 1

# execute as @e[tag=elevator,tag=!_exculde] if score @s ID = _temp ID as @n[tag=elevator] if score @s onLevel matches 0 as @e[tag=elevator,tag=0] if score @s ID = _temp ID run say @s - tag 0
# execute as @e[tag=elevator,tag=!_exculde] if score @s ID = _temp ID as @n[tag=elevator] if score @s onLevel matches 1 as @e[tag=elevator,tag=1] if score @s ID = _temp ID run say @s - tag 1

# execute if score @s onLevel matches 0 as @e[tag=elevator,tag=0] if score @s ID = _temp ID run say @s - tag 0

execute as @e[tag=elevator] if score @s ID = _temp ID if score @s onLevel = @s level at @s as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/resume

tag @s remove _exclude