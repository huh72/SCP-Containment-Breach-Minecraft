execute as @n[tag=event.914] at @s if entity @s[tag=0] rotated 0 0 run function animated_java:scientist/summon with storage aj:temp
execute as @n[tag=event.914] at @s if entity @s[tag=90] rotated 90 0 run function animated_java:scientist/summon with storage aj:temp
execute as @n[tag=event.914] at @s if entity @s[tag=180] rotated 180 0 run function animated_java:scientist/summon with storage aj:temp
execute as @n[tag=event.914] at @s if entity @s[tag=270] rotated 270 0 run function animated_java:scientist/summon with storage aj:temp

execute as @n[tag=scientist] run function animated_java:scientist/animations/death/play
playsound cb:event.914_0 ambient @a[distance=..4] ~ ~1 ~ 1 1 1
playsound cb:event.914_0 ambient @a[distance=4..8] ~ ~1 ~ 0.4 1 1
playsound cb:event.914_0 ambient @a[distance=9..13] ~ ~1 ~ 0.1 1 1

kill @n[tag=event.914]