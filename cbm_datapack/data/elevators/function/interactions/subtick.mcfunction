execute if entity @s[tag=r0] positioned ~1.25 ~ ~-2 as @a[distance=..1.5] run tag @s add canCallElevator
execute if entity @s[tag=r0] positioned ~-1.25 ~ ~2 as @a[distance=..1.5] run tag @s add canCallElevator
execute if entity @s[tag=r1] positioned ~2 ~ ~1.25 as @a[distance=..1.5] run tag @s add canCallElevator
execute if entity @s[tag=r1] positioned ~-2 ~ ~-1.25 as @a[distance=..1.5] run tag @s add canCallElevator

execute as @a[tag=canCallElevator,scores={elevatorRightClick=1..},distance=..5] at @s run function elevators:interactions/call

execute as @n[tag=elevator] if entity @s[tag=doorsCd] run say @s DoorsCd!