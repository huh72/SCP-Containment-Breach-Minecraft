tag @s add 1499_1Target
playsound cb:scp1499.triggered ambient @s ~ ~ ~ 0.25 1 1
playsound cb:scp1499.triggered ambient @a[distance=0.01..] ~ ~100 ~ 1 1 1

# execute as @e[tag=scp1499_1,distance=..32] run function animated_java:scp1499_1/animations/point/play