stopsound @a ambient cb:b1.siren
playsound cb:b2.alphawarheadfail ambient @a ~ ~100 ~ 100 1 1
execute at @n[tag=b2.mtfspawnpoint] as @n[tag=aj.door_card0.root] run function animated_java:door_card0/animations/openclosetoggle/resume
execute at @n[tag=b2.mtfspawnpoint] run function mtf:spawn {"NoAI":"1","additionaltag":"notHostile","rotatedAs":"@n[tag=b2.mtfspawnpoint]"}