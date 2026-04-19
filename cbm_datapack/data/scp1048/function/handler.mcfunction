#vars
scoreboard players remove @s[scores={greet=1..}] greet 1
execute if entity @n[type=item_display,tag=scp1048,tag=aj.scp1048.animation.greet.playing] run scoreboard players remove @s[scores={greet=..0}] greet 1

#movement + rotation
tp @n[type=item_display,tag=scp1048] ~ ~ ~
data modify entity @n[type=item_display,tag=scp1048] Rotation[0] set from entity @s Rotation[0]

#greet
execute if score @s greet = 0 math if entity @p[tag=!dead,distance=..4] as @n[type=item_display,tag=scp1048] run function animated_java:scp1048/animations/greet/play
execute if score @s greet = .animationTime greet as @n[type=item_display,tag=scp1048,tag=aj.scp1048.animation.greet.playing] run function animated_java:scp1048/animations/greet/stop

#animations "aj.scp1048.animation.idle.playing"
execute if predicate scp1048:moving as @n[type=item_display,tag=scp1048,tag=!aj.scp1048.animation.walk.playing,tag=!aj.scp1048.animation.greet.playing] run function animated_java:scp1048/animations/walk/play
execute unless predicate scp1048:moving as @n[type=item_display,tag=scp1048,tag=aj.scp1048.animation.walk.playing] run function animated_java:scp1048/animations/walk/stop

execute unless predicate scp1048:moving as @n[type=item_display,tag=scp1048,tag=!aj.scp1048.animation.idle.playing,tag=!aj.scp1048.animation.greet.playing] run function animated_java:scp1048/animations/idle/play
execute if predicate scp1048:moving as @n[type=item_display,tag=scp1048,tag=aj.scp1048.animation.idle.playing] run function animated_java:scp1048/animations/idle/stop