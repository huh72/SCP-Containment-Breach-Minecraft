#tp and rotate model
tp @n[tag=guardaj] ~ ~ ~
data modify entity @n[tag=guardaj] Rotation[0] set from entity @s Rotation[0]

#define targets
function guard:player_interact/define_targets

#switch idle and walk animations
execute if entity @s[predicate=guard:idle] as @n[tag=guardaj] if entity @s[tag=!aj.guard.animation.idle2.playing,tag=!aj.guard.animation.paper.playing] run function animated_java:guard/animations/idle2/play
execute if entity @s[predicate=guard:walk] as @n[tag=guardaj] if entity @s[tag=!aj.guard.animation.walk2.playing,tag=!aj.guard.animation.paper.playing] run function animated_java:guard/animations/walk2/play

execute unless entity @s[predicate=guard:idle] as @n[tag=guardaj] if entity @s[tag=aj.guard.animation.idle2.playing] run function animated_java:guard/animations/idle2/stop
execute unless entity @s[predicate=guard:walk] as @n[tag=guardaj] if entity @s[tag=aj.guard.animation.walk2.playing] run function animated_java:guard/animations/walk2/stop

# execute if entity @s[predicate=guard:idle] run say idle
# execute if entity @s[predicate=guard:walk] run say walk
# say u

#death func
execute if score @s health matches ..0 run function guard:despawn


#clear
data modify entity @n[tag=guardaj] Rotation[1] set value 0