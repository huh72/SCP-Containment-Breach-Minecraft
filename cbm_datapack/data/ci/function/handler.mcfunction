#g align model and origin entity
tp @n[type=item_display, tag=cis.model] ~ ~ ~
data modify entity @n[type=item_display, tag=cis.model] Rotation[0] set from entity @s Rotation[0]
rotate @n[type=item_display, tag=cis.model] facing entity @n[tag=ci_enemy, tag=!dead, distance=..14] feet
data modify entity @n[type=item_display, tag=cis.model] Rotation[1] set value 0.0f

#g death
execute if score @s health matches ..0 run function ci:_death

#g handle animations
execute if predicate ci:idle as @n[type=item_display, tag=cis.model] if entity @s[tag=!aj.cisolder.animation.idle.playing,tag=!aj.cisolder.animation.death.playing] run function animated_java:cisolder/animations/idle/play
execute unless predicate ci:idle as @n[type=item_display, tag=cis.model] if entity @s[tag=!aj.cisolder.animation.walk.playing,tag=!aj.cisolder.animation.death.playing] run function animated_java:cisolder/animations/walk/play

execute unless predicate ci:idle as @n[type=item_display, tag=cis.model] if entity @s[tag=aj.cisolder.animation.idle.playing] run function animated_java:cisolder/animations/idle/stop
execute if predicate ci:idle as @n[type=item_display, tag=cis.model] if entity @s[tag=aj.cisolder.animation.walk.playing] run function animated_java:cisolder/animations/walk/stop

#g follow players
data modify entity @s wander_target set from entity @n[tag=ci_enemy, tag=!dead, distance=..48] Pos
execute if entity @n[tag=mtf, tag=ci_enemy, tag=!dead, distance=..8] run data modify entity @s wander_target set from entity @s Pos

#g breath sound
scoreboard players remove @s breath_cd 1

execute if score @s breath_cd matches ..0 run function ci:breath
execute as @a unless entity @s[distance=..18] run stopsound @s * ci:breath

#g check for look contact with mtf/class d
execute if score cd_spot_cd ci matches 1.. run scoreboard players remove cd_spot_cd ci 1

execute if score look_check_cd ci matches 1.. run scoreboard players remove look_check_cd ci 1
execute if score look_check_cd ci matches 0 if entity @n[tag=ci_enemy, distance=..16] anchored eyes facing entity @n[tag=ci_enemy] eyes run function ci:enemy_check/start

#g count time until shoot
execute if entity @n[tag=detected_by_ci, tag=!dead] run scoreboard players add anger_time ci 1
execute if score @s shot_cd matches 1.. run scoreboard players remove @s shot_cd 1
execute if score anger_time ci >= _anger_time ci if score @s shot_cd matches 0 if entity @s[tag=detected_enemy] as @n[tag=detected_by_ci] run function ci:shoot/shoot