execute as @a[tag=interactedWithElevator] run function inventory:hotbar/set {"text":"'You called the elevator."}
# say called!


scoreboard players operation _temp ID = @s ID

execute as @e[tag=elevator] if score @s ID = _temp ID run tag @s add moving

execute as @e[tag=elevator] if score @s ID = _temp ID if entity @s[tag=gateA] as @e[tag=gateB] run tag @s add broken
execute as @e[tag=elevator] if score @s ID = _temp ID if entity @s[tag=gateB] as @e[tag=gateA] run tag @s add broken

execute as @e[tag=elevator] if score @s ID = _temp ID if score @s onLevel = @s level at @s as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/resume