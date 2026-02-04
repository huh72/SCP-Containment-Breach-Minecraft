tag @e[tag=passed] remove passed
execute as @e[tag=aj.class_d.root] run function animated_java:class_d/remove/all
function guard:despawn_all

execute at @n[tag=i.door0] as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume
execute at @n[tag=i.door1] as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume
execute as @n[tag=celldoor] run function animated_java:celldoor/animations/openclose/resume
function scp173:despawndummy

stopsound @a