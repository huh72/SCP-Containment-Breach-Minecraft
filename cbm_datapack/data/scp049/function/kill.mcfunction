playsound cb:scp049.kill ambient @s ~ ~ ~ 1 1 1
effect give @n[tag=scp049] slowness 6 255 true
execute if entity @n[tag=scp049] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/walk/stop
execute if entity @n[tag=scp049] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/idle/stop
execute if entity @n[tag=scp049] as @n[tag=aj.scp049.root] run function animated_java:scp049/animations/revive/play

tag @s add d_049
function main:death