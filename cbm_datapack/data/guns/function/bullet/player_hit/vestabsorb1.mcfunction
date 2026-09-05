execute positioned ^ ^ ^-0.5 run particle crit ~ ~ ~ 0 0 0 0.33 12 force @a[tag=!vest]

$playsound minecraft:entity.player.attack.crit ambient @s ~ ~100000 ~ 100000 1.$(pitch0) 1
$playsound minecraft:entity.player.attack.crit ambient @a[distance=0.01..16] ~ ~ ~ 1 1.$(pitch0) 1

$playsound minecraft:block.anvil.place ambient @s ~ ~10000000 ~ 100000000 1.$(pitch1) 1
$playsound minecraft:block.anvil.place ambient @a[distance=0.01..8] ~ ~ ~ 0.5 1.$(pitch1) 1

#g damage player
execute if predicate guns:10 run scoreboard players remove @s health 1
execute if predicate guns:2 run scoreboard players add @s bleeding 1

#g blood particle
execute if predicate guns:10 run particle block{block_state:{Name:redstone_block}} ~ ~ ~ 0 0 0 0 3

effect give @s slowness 1 1 true

#g death func
execute if score @s health matches ..0 run tag @s add d_mtf
execute if score @s health matches ..0 at @n[tag=mtf] run playsound cb:mtf.terminated ambient @a ~ ~ ~ 2 1 1


execute as @n[tag=bullet] run function guns:bullet/despawn