#movement + rotation
tp @n[type=item_display, tag=scp1048a] ~ ~ ~
data modify entity @n[type=item_display, tag=scp1048a] Rotation[0] set from entity @s[tag=!shriek] Rotation[0]
execute if entity @s[tag=shriek] as @n[tag=scp1048a] run rotate @s facing entity @p eyes
execute if entity @s[tag=shriek] as @n[tag=scp1048a] run data modify entity @s Rotation[1] set value 0

#shriek
#start
execute if entity @p[tag=!dead,distance=..4] as @n[type=item_display, tag=scp1048a, tag=!aj.scp1048a.animation.shriek.playing] run function animated_java:scp1048a/animations/shriek/play
#DOT
execute if entity @s[tag=shriek] run scoreboard players add @a[distance=..9,tag=!dead] shriek 1
execute as @a[tag=!dead, tag=!god] at @s if score @s shriek >= .DamageTime shriek run function scp1048a:playerdamage


#animations "aj.scp1048a.animation.idle.playing"
execute if predicate scp1048:moving as @n[type=item_display, tag=scp1048a, tag=!aj.scp1048a.animation.walk.playing, tag=!aj.scp1048a.animation.shriek.playing] run function animated_java:scp1048a/animations/walk/play
execute unless predicate scp1048:moving as @n[type=item_display, tag=scp1048a, tag=aj.scp1048a.animation.walk.playing] run function animated_java:scp1048a/animations/walk/stop

execute unless predicate scp1048:moving as @n[type=item_display, tag=scp1048a, tag=!aj.scp1048a.animation.idle.playing, tag=!aj.scp1048a.animation.shriek.playing] run function animated_java:scp1048a/animations/idle/play
execute if predicate scp1048:moving as @n[type=item_display, tag=scp1048a, tag=aj.scp1048a.animation.idle.playing] run function animated_java:scp1048a/animations/idle/stop