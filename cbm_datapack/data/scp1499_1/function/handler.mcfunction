#movement + rotation
tp @n[type=item_display, tag=scp1499_1] ~ ~ ~
data modify entity @n[type=item_display, tag=scp1499_1] Rotation[0] set from entity @s[tag=!attacking] Rotation[0]
execute if entity @s[tag=attacking] run rotate @n[type=item_display, tag=scp1499_1] facing entity @n[tag=1499_1KillTarget] eyes
execute if entity @s[tag=attacking] run data modify entity @n[type=item_display, tag=scp1499_1] Rotation[1] set value 0.0

#adding "contact" time
execute as @a[tag=!dead] at @s if entity @n[tag=scp1499_1,distance=..3] run scoreboard players add @s timeNear1499_1 3
execute as @a[tag=!dead] at @s if entity @n[tag=scp1499_1,distance=3..5] run scoreboard players add @s timeNear1499_1 1

#defining 1499_1's targets
execute as @a at @s if score @s[tag=!1499_1Target] timeNear1499_1 >= timing0 timeNear1499_1 run function scp1499_1:playermarkedastarget
execute as @a at @s if score @s[tag=!1499_1KillTarget] timeNear1499_1 >= timing1 timeNear1499_1 run function scp1499_1:playermarkedasenemy

#pursiuting targets
data modify entity @s wander_target set from entity @n[tag=1499_1Target] Pos
execute as @p[tag=1499_1KillTarget,distance=..2.25,tag=!dead] as @n[tag=scp1499_1] if entity @s[tag=!aj.scp1499_1.animation.attack.playing] run function animated_java:scp1499_1/animations/attack/play
# execute as @a[tag=1499_1KillTarget, tag=!dead] at @s if entity @n[tag=scp1499_1, distance=..3, tag=!aj.scp1499_1.animation.attack.playing] run function animated_java:scp1499_1/animations/attack/play

#animations
execute if predicate scp1499_1:moving as @n[type=item_display, tag=scp1499_1] if entity @s[tag=!aj.scp1499_1.animation.walk.playing, tag=!aj.scp1499_1.animation.point.playing, tag=!aj.scp1499_1.animation.attack.playing] run function animated_java:scp1499_1/animations/walk/play
execute unless predicate scp1499_1:moving as @n[type=item_display, tag=scp1499_1] if entity @s[tag=aj.scp1499_1.animation.walk.playing] run function animated_java:scp1499_1/animations/walk/stop

execute unless predicate scp1499_1:moving as @n[type=item_display, tag=scp1499_1] if entity @s[tag=!aj.scp1499_1.animation.idle.playing, tag=!aj.scp1499_1.animation.point.playing, tag=!aj.scp1499_1.animation.attack.playing] run function animated_java:scp1499_1/animations/idle/play
execute if predicate scp1499_1:moving as @n[type=item_display, tag=scp1499_1] if entity @s[tag=aj.scp1499_1.animation.idle.playing] run function animated_java:scp1499_1/animations/idle/stop