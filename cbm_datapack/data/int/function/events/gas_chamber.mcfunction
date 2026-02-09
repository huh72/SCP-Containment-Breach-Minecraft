execute at @n[tag=i.cellcenter] as @n[tag=celldoor] run function animated_java:celldoor/animations/openclose/resume
playsound cb:i.ulgrin.gas ambient @a ~ ~ ~ 3 1 1

execute as @a at @s unless entity @n[tag=guard,distance=..3] run tag @s add d_gas
execute as @a at @s unless entity @n[tag=guard,distance=..3] run function main:death

playsound cb:event3.airlock ambient @a ~ ~ ~ 2 1 1
execute at @n[tag=ulgrin] run function save_progress:save {"sound":"none"}