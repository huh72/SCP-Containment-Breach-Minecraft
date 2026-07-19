# model align
tp @n[tag=aj.scp457.root] ~ ~ ~
data modify entity @n[tag=aj.scp457.root] Rotation[0] set from entity @s Rotation[0]

#animations
execute unless predicate scp457:idle as @n[tag=aj.scp457.root,tag=!aj.scp457.animation.walk.playing] run function animated_java:scp457/animations/walk/play
execute unless predicate scp457:idle as @n[tag=aj.scp457.root,tag=aj.scp457.animation.idle.playing] run function animated_java:scp457/animations/idle/stop

execute if predicate scp457:idle as @n[tag=aj.scp457.root,tag=!aj.scp457.animation.idle.playing] run function animated_java:scp457/animations/idle/play
execute if predicate scp457:idle as @n[tag=aj.scp457.root,tag=aj.scp457.animation.walk.playing] run function animated_java:scp457/animations/walk/stop

#set light var reduce
execute if score .scp457 setLightCd matches 1.. run scoreboard players remove .scp457 setLightCd 1
execute if score .scp457 dealDamageCd matches 1.. run scoreboard players remove .scp457 dealDamageCd 1
scoreboard players add .scp457 fireLoopSound 1

#set light
execute if score .scp457 setLightCd = 0 math if block ~ ~ ~ #scp457:air run function scp457:removelight
execute if score .scp457 setLightCd = 0 math if block ~ ~ ~ #scp457:air run function scp457:setlight

#fire sound
execute if score .scp457 fireLoopSound = .0 fireLoopSound run function scp457:sounds/fire0
execute if score .scp457 fireLoopSound = .1 fireLoopSound run function scp457:sounds/fire1
execute if score .scp457 fireLoopSound = .2 fireLoopSound run function scp457:sounds/fire2
execute if score .scp457 fireLoopSound = .restart fireLoopSound run scoreboard players set .scp457 fireLoopSound 0

#define distance and deal damage
scoreboard players set @a playerTo457Distance 0

execute as @a[tag=!dead] run function scp457:definetargets

scoreboard players remove @a[scores={playerTo457Distance=0,playerOnFireTime=1..}] playerOnFireTime 1

# particles
execute unless predicate scp457:idle run particle minecraft:end_rod ~ ~0.5 ~ 0.25 0.75 0.25 0.01 25 force @a
execute if predicate scp457:idle run particle minecraft:end_rod ~ ~1 ~ 0.25 0.6 0.25 0.025 8 force @a