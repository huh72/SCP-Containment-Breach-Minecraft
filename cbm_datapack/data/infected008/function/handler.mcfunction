scoreboard players add @s infected008 1

#align model and root entity
tp @n[tag=aj.infected008.root] ~ ~ ~
data modify entity @n[tag=aj.infected008.root] Rotation[0] set from entity @s Rotation[0]

#movement animations handler
execute if predicate infected008:moving as @n[tag=aj.infected008.root] if entity @s[tag=!aj.infected008.animation.walk.playing,tag=!aj.infected008.animation.attack.playing] run function animated_java:infected008/animations/walk/play
execute if predicate infected008:moving as @n[tag=aj.infected008.root] if entity @s[tag=aj.infected008.animation.idle.playing,tag=!aj.infected008.animation.attack.playing] run function animated_java:infected008/animations/idle/stop

execute unless predicate infected008:moving as @n[tag=aj.infected008.root] if entity @s[tag=aj.infected008.animation.walk.playing,tag=!aj.infected008.animation.attack.playing] run function animated_java:infected008/animations/walk/stop
execute unless predicate infected008:moving as @n[tag=aj.infected008.root] if entity @s[tag=!aj.infected008.animation.idle.playing,tag=!aj.infected008.animation.attack.playing] run function animated_java:infected008/animations/idle/play

#attack handler
execute positioned ^ ^ ^0.5 if entity @p[tag=!dead,distance=..1] as @n[tag=aj.infected008.root] if entity @s[tag=!aj.infected008.animation.attack.playing] run function animated_java:infected008/animations/attack/play

#death
execute if score @s health matches ..0 run function infected008:death

#breath
execute if score @s infected008 = breathTimer infected008 run function infected008:breath