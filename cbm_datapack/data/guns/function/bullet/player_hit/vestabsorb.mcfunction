execute positioned ^ ^ ^-0.5 run particle crit ~ ~ ~ 0 0 0 0.33 6 force @a[tag=!vest]

$playsound minecraft:entity.player.attack.crit ambient @s ~ ~100000 ~ 100000 1.$(pitch) 1
$playsound minecraft:entity.player.attack.crit ambient @a[distance=0.01..16] ~ ~ ~ 1 1.$(pitch) 1

effect give @s slowness 1 1 true

execute as @n[tag=bullet] run function guns:bullet/despawn