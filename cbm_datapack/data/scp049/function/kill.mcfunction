effect give @n[tag=scp049,distance=0..1] slowness 6 255 true
execute if entity @n[tag=scp049,distance=0..1] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/walk/stop
execute if entity @n[tag=scp049,distance=0..1] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/idle/stop
execute if entity @n[tag=scp049,distance=0..1] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/revive/play

execute at @s if entity @n[tag=scp049,distance=0..1] run tag @s add d_049
execute at @s if entity @n[tag=scp049,distance=0..1] run function main:death