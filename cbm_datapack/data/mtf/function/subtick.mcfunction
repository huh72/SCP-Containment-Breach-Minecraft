#vars
scoreboard players remove @s[scores={breath_cd=1..}] breath_cd 1
scoreboard players remove @s[scores={beep_cd=1..}] beep_cd 1
execute if score .mtf classdDetect matches 1.. run scoreboard players remove .mtf classdDetect 1

#tp and rotate model
tp @n[tag=aj.mtf.root] ~ ~ ~
data modify entity @n[tag=aj.mtf.root] Rotation[0] set from entity @s Rotation[0]

#define targets
function mtf:player_interact/define_targets

#g follow path
execute unless entity @n[tag=mtf_target] run data modify entity @s wander_target set from entity @n[tag=pf.point] Pos
#g remove reached path markers
execute as @e[tag=pf.point] at @s if entity @n[tag=mtf,distance=..2] run kill @s

#switch idle and walk animations
execute if entity @s[predicate=mtf:idle,tag=!idle] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/idle/play
execute if entity @s[predicate=mtf:idle,tag=!idle] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/walk/stop

execute if entity @s[predicate=mtf:walk,tag=!walk] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/idle/stop
execute if entity @s[predicate=mtf:walk,tag=!walk] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/walk/play

tag @s add idle
tag @s add walk
tag @s[predicate=!mtf:idle] remove idle
tag @s[predicate=!mtf:walk] remove walk


#g door interact
#g lcz + ez
execute as @n[tag=door_marker, tag=!card, tag=!sc, distance=..4] at @s if entity @s[tag=closed, tag=!proceed] if entity @n[tag=aj.door0.root, distance=..0.1] run function mtf:doors_interact/open
execute as @n[tag=door_marker, tag=!card, tag=!sc, distance=..4] at @s if entity @s[tag=closed, tag=!proceed] unless entity @n[tag=aj.door0.root, distance=..0.1] run function mtf:doors_interact/open_unrendered
#g hcz
execute as @n[tag=door_marker_hcz, tag=!card, distance=..4] at @s if entity @s[tag=closed, tag=!proceed] if entity @n[tag=aj.door1.root, distance=..0.1] run function mtf:doors_interact/open_hcz
execute as @n[tag=door_marker_hcz, tag=!card, distance=..4] at @s if entity @s[tag=closed, tag=!proceed] unless entity @n[tag=aj.door1.root, distance=..0.1] run function mtf:doors_interact/open_unrendered_hcz


# sounds (beep & breath)
#breath sound
execute if score @s breath_cd matches 0 run function mtf:breath
#beep sound
execute if score @s beep_cd matches 0 run function mtf:beep


#death func
execute if score @s health matches ..0 run function mtf:despawn


#g clear y rotation
data modify entity @n[tag=aj.mtf.root] Rotation[1] set value 0