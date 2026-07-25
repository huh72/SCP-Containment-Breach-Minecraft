function scp049:despawn
execute at @n[tag=elevatorDoors] positioned ^ ^0.25 ^ run function scp049:spawn

playsound cb:scp049.inchamber ambient @a[tag=location.049chamber] ~ ~5 ~ 2 1 1

execute as @n[tag=elevatorDoors] run function animated_java:elevator_doors/animations/openclose/resume

scoreboard players set .state chamber049.event 4