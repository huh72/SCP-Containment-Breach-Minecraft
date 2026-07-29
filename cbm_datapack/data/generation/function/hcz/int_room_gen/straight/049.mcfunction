$execute if entity @s[tag=1] positioned ~ ~1 ~-2 run place template $(room)0
$execute if entity @s[tag=2] positioned ~-2 ~1 ~ run place template $(room)1

# init hcz room elevators
# scp049.elevator0Spawn , scp049.elevator1Spawn


#g for type: 1
execute if entity @s[tag=1] run function generation:hcz/int_room_gen/straight/init/049_0

#g for type: 2
execute if entity @s[tag=2] run function generation:hcz/int_room_gen/straight/init/049_1

execute at @e[tag=elevator,tag=049,tag=0] as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/play

# init chamber elevators

# 049chamber.elevator0spawn , 049chamber.elevator1spawn
# 049chamber.gate.spawn

kill @e[tag=scp049.elevator0Spawn]
kill @e[tag=scp049.elevator1Spawn]
kill @s