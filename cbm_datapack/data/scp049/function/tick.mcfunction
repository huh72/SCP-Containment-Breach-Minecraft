execute if score 049 door_open_cd matches 1.. run scoreboard players remove 049 door_open_cd 1
scoreboard players add 049 phrase 1

#tp the model
execute as @e[type=minecraft:vindicator,tag=scp049] at @s run tp @n[tag=aj.scp049.root] ~ ~ ~
data modify entity @n[tag=aj.scp049.root] Rotation[0] set from entity @n[tag=scp049] Rotation[0]

#kill 
execute as @a[tag=!dead] at @s if entity @n[tag=scp049,distance=0..1.1] run function scp049:kill

#subtick function - use @s
execute as @n[type=minecraft:vindicator,tag=scp049] at @s run function scp049:subtick

#door open lcz
execute if score 049 door_open_cd matches 0 at @n[type=minecraft:vindicator,tag=scp049] if entity @n[type=minecraft:marker,tag=door_marker,distance=..3,tag=closed] run function scp049:open_door_lcz

#door open hcz
execute if score 049 door_open_cd matches 0 at @n[type=minecraft:vindicator,tag=scp049] if entity @n[type=minecraft:marker,tag=door_marker_hcz,distance=..3,tag=closed] run function scp049:open_door_hcz

#chamber ambient loop
execute as @a[tag=!dead] if score @s chamber049.ambientTimer = .max chamber049.ambientTimer run function scp049:chamber_ambient
execute as @a[tag=!dead] unless score @s chamber049.ambientTimer matches -1 run scoreboard players add @s chamber049.ambientTimer 1