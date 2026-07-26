execute as @n[tag=femurBreaker, tag=up] run tag @s remove uninteractibale 
execute as @n[tag=femurBreaker, tag=up] run function animated_java:lever/animations/switch/resume

scoreboard players set .breaker event106 0
scoreboard players set .breakerTimer event106 0
scoreboard players set .line event106 0

execute as @n[tag=soundTransmission, tag=up] run function animated_java:lever/animations/switch/resume
execute if entity @n[tag=soundTransmission, tag=up] run scoreboard players set .sound event106 0

scoreboard players set .static event106 -1


execute as @n[tag=reboot, tag=down] run function animated_java:lever/animations/switch/resume
execute if entity @n[tag=reboot, tag=down] run scoreboard players set .magnet event106 1