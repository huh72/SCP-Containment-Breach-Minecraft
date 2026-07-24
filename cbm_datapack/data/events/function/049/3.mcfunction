execute as @e[tag=elevator] if entity @s[tag=049] run tag @s remove broken
execute as @e[tag=elevator] if entity @s[tag=049, tag=1] as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/apply_frame {"frame":"0"}

scoreboard players set .state chamber049.event 3