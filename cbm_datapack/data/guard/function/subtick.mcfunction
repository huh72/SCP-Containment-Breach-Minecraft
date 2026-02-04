#tp and rotate model
tp @n[tag=guardaj] ~ ~ ~
data modify entity @n[tag=guardaj] Rotation[0] set from entity @s Rotation[0]

#define targets
function guard:player_interact/define_targets

#switch idle and walk animations
execute as @n[tag=guardaj] run function animated_java:guard/animations/idle2/pause
execute as @n[tag=guardaj] run function animated_java:guard/animations/walk2/pause

execute if entity @s[predicate=mtf:idle,tag=!i.paper] as @n[tag=guardaj] run function animated_java:guard/animations/idle2/resume
execute if entity @s[predicate=mtf:walk,tag=!i.paper] as @n[tag=guardaj] run function animated_java:guard/animations/walk2/resume


#death func
execute if score @s health matches ..0 run function guard:despawn


#clear
data modify entity @n[tag=guardaj] Rotation[1] set value 0