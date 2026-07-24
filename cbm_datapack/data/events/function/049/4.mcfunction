function scp049:despawn
execute at @n[tag=elevator] positioned ~ ~0.5 ~ run function scp049:spawn

execute at @n[tag=elevator] as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/resume

scoreboard players set .state chamber049.event 4