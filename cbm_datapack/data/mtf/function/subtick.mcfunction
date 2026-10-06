#vars
scoreboard players remove @s[scores={breath_cd=1..}] breath_cd 1
scoreboard players remove @s[scores={beep_cd=1..}] beep_cd 1
execute if score .mtf classdDetect matches 1.. run scoreboard players remove .mtf classdDetect 1

#tp and rotate model
tp @n[type=item_display, tag=aj.mtf.root] ~ ~ ~
data modify entity @n[type=item_display, tag=aj.mtf.root] Rotation[0] set from entity @s Rotation[0]

data modify entity @s wander_target set from entity @n[tag=mtf_enemy, tag=!dead, distance=..32] Pos
execute if entity @n[tag=ci, tag=mtf_enemy, tag=!dead, distance=..8] run data modify entity @s wander_target set from entity @s Pos
rotate @n[type=item_display, tag=aj.mtf.root] facing entity @n[tag=mtf_enemy, tag=!dead, distance=..16] eyes



#g define targets ::
#g check for look contact with mtf/class d
execute if score cd_spot_cd mtf matches 1.. run scoreboard players remove cd_spot_cd mtf 1

execute if score look_check_cd mtf matches 1.. run scoreboard players remove look_check_cd mtf 1
execute if score look_check_cd mtf matches 0 if entity @n[tag=mtf_enemy, distance=..16] anchored eyes facing entity @n[tag=mtf_enemy] eyes run function mtf:enemy_check/start

#g count time until shoot
execute if entity @n[tag=detected_by_mtf, tag=!dead] run scoreboard players add anger_time mtf 1
execute if score @s shot_cd matches 1.. run scoreboard players remove @s shot_cd 1
execute if score anger_time mtf >= _anger_time mtf if score @s shot_cd matches 0 if entity @s[tag=detected_enemy] as @n[tag=detected_by_mtf] run function mtf:shoot/shoot



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
execute as @n[type=marker, tag=door_marker, tag=!card, tag=!sc, distance=..4] at @s if entity @s[tag=closed, tag=!proceed] if entity @n[tag=aj.door0.root, distance=..0.1] run function mtf:doors_interact/open
execute as @n[type=marker, tag=door_marker, tag=!card, tag=!sc, distance=..4] at @s if entity @s[tag=closed, tag=!proceed] unless entity @n[tag=aj.door0.root, distance=..0.1] run function mtf:doors_interact/open_unrendered
#g hcz
execute as @n[type=marker, tag=door_marker_hcz, tag=!card, distance=..4] at @s if entity @s[tag=closed, tag=!proceed] if entity @n[tag=aj.door1.root, distance=..0.1] run function mtf:doors_interact/open_hcz
execute as @n[type=marker, tag=door_marker_hcz, tag=!card, distance=..4] at @s if entity @s[tag=closed, tag=!proceed] unless entity @n[tag=aj.door1.root, distance=..0.1] run function mtf:doors_interact/open_unrendered_hcz


# sounds (beep & breath)
#breath sound
execute if score @s breath_cd matches 0 run function mtf:breath
#beep sound
execute if score @s beep_cd matches 0 run function mtf:beep


#death func
execute if score @s health matches ..0 run function mtf:_death


#g clear y rotation
data modify entity @n[type=item_display, tag=aj.mtf.root] Rotation[1] set value 0