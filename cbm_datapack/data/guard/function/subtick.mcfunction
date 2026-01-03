#tp and rotate model
tp @n[tag=guardaj] ~ ~ ~
data modify entity @n[tag=guardaj] Rotation[0] set from entity @s Rotation[0]

#define targets
function guard:player_interact/define_targets

#switch idle and walk animations
execute if entity @s[predicate=mtf:idle,tag=!idle] as @n[tag=guardaj] run function animated_java:guard/animations/idle2/play
execute if entity @s[predicate=mtf:idle,tag=!idle] as @n[tag=guardaj] run function animated_java:guard/animations/walk2/stop

execute if entity @s[predicate=mtf:walk,tag=!walk] as @n[tag=guardaj] run function animated_java:guard/animations/idle2/stop
execute if entity @s[predicate=mtf:walk,tag=!walk] as @n[tag=guardaj] run function animated_java:guard/animations/walk2/play

tag @s add idle
tag @s add walk
tag @s[predicate=!mtf:idle] remove idle
tag @s[predicate=!mtf:walk] remove walk


#door interact
# execute as @n[tag=door_marker,distance=..4] if entity @s[tag=closed,scores={door_interact_cd=0}] run function mtf:doors_interact/open
# execute as @n[tag=door_marker,tag=card,distance=..4] if entity @s[tag=closed,scores={door_interact_cd=0}] run function mtf:doors_interact/open_card


#death func
execute if score @s health matches ..0 run function guard:despawn


#clear
data modify entity @n[tag=guardaj] Rotation[1] set value 0