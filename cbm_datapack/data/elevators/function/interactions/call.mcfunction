scoreboard players set @s door_right_click 0

# execute as @n[tag=elevator] if entity @s[tag=0] run scoreboard players set @p onLevel 0
# execute as @n[tag=elevator] if entity @s[tag=1] run scoreboard players set @p onLevel 1

execute at @n[tag=elevatorDoors] positioned ~ ~1 ~ run function elevators:interactions/click

## conditions:
#player inside, elevator idle => call (start)
execute if entity @s[tag=insideElevator] at @n[tag=elevatorDoors] as @n[tag=elevator] at @s[scores={moveTime=-1}] run function elevators:interactions/r/call

#player outside, elevator moving => already called
execute if entity @s[tag=!insideElevator] unless score @s onLevel = @n[tag=elevator] onLevel at @n[tag=elevatorDoors] as @n[tag=elevator] at @s[scores={moveTime=-1}] run function elevators:interactions/r/call

#player outside, elevator moving => already called
execute at @n[tag=elevatorDoors] as @n[tag=elevator] at @s[scores={moveTime=0..}] run function elevators:interactions/r/alreadycalled

#player outside, elevator moving => already called
execute if entity @s[tag=!insideElevator] if score @s onLevel = @n[tag=elevator] onLevel at @n[tag=elevatorDoors] as @n[tag=elevator] at @s[scores={moveTime=-1}] run function elevators:interactions/r/onlevel
