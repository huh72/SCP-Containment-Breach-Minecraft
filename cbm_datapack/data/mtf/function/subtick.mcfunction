#vars
scoreboard players remove @s[scores={breath_cd=1..}] breath_cd 1
scoreboard players remove @s[scores={beep_cd=1..}] beep_cd 1


#tp and rotate model
tp @n[tag=aj.mtf.root] ~ ~ ~
data modify entity @n[tag=aj.mtf.root] Rotation[0] set from entity @s Rotation[0]

#define targets
function mtf:player_interact/define_targets

#switch idle and walk animations
execute if entity @s[predicate=mtf:idle,tag=!idle] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/idle/play
execute if entity @s[predicate=mtf:idle,tag=!idle] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/walk/stop

execute if entity @s[predicate=mtf:walk,tag=!walk] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/idle/stop
execute if entity @s[predicate=mtf:walk,tag=!walk] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/walk/play

tag @s add idle
tag @s add walk
tag @s[predicate=!mtf:idle] remove idle
tag @s[predicate=!mtf:walk] remove walk


#door interact
# execute as @n[tag=door_marker,distance=..4] if entity @s[tag=closed,scores={door_interact_cd=0}] run function mtf:doors_interact/open
# execute as @n[tag=door_marker,tag=card,distance=..4] if entity @s[tag=closed,scores={door_interact_cd=0}] run function mtf:doors_interact/open_card


# sounds (beep & breath)
#breath sound
execute if score @s breath_cd matches 0 run function mtf:breath
#beep sound
execute if score @s beep_cd matches 0 run function mtf:beep


#death func
execute if score @s health matches ..0 run function mtf:despawn


#clear
data modify entity @n[tag=aj.mtf.root] Rotation[1] set value 0