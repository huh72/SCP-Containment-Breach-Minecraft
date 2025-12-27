#guns stuff -- transferring stats into shoot func
# $scoreboard players set @s shot_cd $(shot_cd)
# scoreboard players remove @s ammo 1

# playsound minecraft:block.chain.hit record @s[scores={ammo=1..10}] ~ ~ ~ 0.5 0.2 1

#sound
playsound cb:m4a1s.fire ambient @a ~ ~ ~ 1 1 1

#recoil
# $execute store result storage cb:mtf acc0 int 1 run random value $(-acc)..$(acc) cb:acc
# $execute store result storage cb:mtf acc1 int 1 run random value $(-acc)..$(acc) cb:acc
# #temp
# data modify storage recoil xa set value 0
# data modify storage recoil ya set value 0

#recoil func
# function guns:recoil/main with storage minecraft:recoil

#visuals: barrel smoke
# execute as @s at @s anchored eyes run particle minecraft:white_smoke ^-0.225 ^-0.2 ^1 0 0 0 0 1 force @a[tag=particles_enabled]


#
execute store result storage gun_main bullet_num int 1 run scoreboard players get @s global_num
# tellraw @a [{"text":"BULLET GLOBAL NUM == "},{"score":{"name":"@s","objective":"global_num"}}]


#tracer/bullet/raycast start
$execute as @s at @s anchored eyes positioned ^ ^ ^1 rotated ~$(acc0) ~$(acc1) run function guns:bullet/spawn with storage minecraft:gun_main

#пиздец
# /data modify entity 6f88f8eb-cfa3-44bf-a621-52b3e7d753e7 Pos set from storage game:player Spawn{target:'[{"selector":"@p"}]'}.location