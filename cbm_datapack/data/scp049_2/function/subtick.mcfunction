#
scoreboard players remove @s[scores={breath=1..}] breath 1
scoreboard players remove @s[scores={hit_cd=1..}] hit_cd 1

execute if entity @s[scores={breath=0}] run function scp049_2:breath
# execute if entity @s[scores={hit_cd=0}] anchored eyes if entity @p[distance=..1] run function scp049_2:hit
execute if entity @s[scores={hit_cd=0}] positioned ^ ^ ^0.5 if entity @p[distance=..1,tag=!dead] run function scp049_2:hit

execute if entity @s[scores={health=..0},tag=scp049_2g] run function scp049_2:despawn
execute if entity @s[scores={health=..0},tag=scp049_2d] run function scp049_2:despawnd

#animations - guard
execute if entity @s[predicate=scp049_2:idle,tag=!idle,tag=scp049_2g] as @n[tag=aj.scp049_2.root] run function animated_java:scp049_2/animations/idle/play
execute if entity @s[predicate=scp049_2:idle,tag=!idle,tag=scp049_2g] as @n[tag=aj.scp049_2.root] run function animated_java:scp049_2/animations/walk/stop

execute if entity @s[predicate=scp049_2:walk,tag=!walk,tag=scp049_2g] as @n[tag=aj.scp049_2.root] run function animated_java:scp049_2/animations/idle/stop
execute if entity @s[predicate=scp049_2:walk,tag=!walk,tag=scp049_2g] as @n[tag=aj.scp049_2.root] run function animated_java:scp049_2/animations/walk/play

#animations - class d
execute if entity @s[predicate=scp049_2:idle,tag=!idle,tag=scp049_2d] as @n[tag=aj.scp049_2d.root] run function animated_java:scp049_2d/animations/idle/play
execute if entity @s[predicate=scp049_2:idle,tag=!idle,tag=scp049_2d] as @n[tag=aj.scp049_2d.root] run function animated_java:scp049_2d/animations/walk/stop

execute if entity @s[predicate=scp049_2:walk,tag=!walk,tag=scp049_2d] as @n[tag=aj.scp049_2d.root] run function animated_java:scp049_2d/animations/idle/stop
execute if entity @s[predicate=scp049_2:walk,tag=!walk,tag=scp049_2d] as @n[tag=aj.scp049_2d.root] run function animated_java:scp049_2d/animations/walk/play

tag @s add idle
tag @s add walk

tag @s[predicate=!scp049_2:idle] remove idle
tag @s[predicate=!scp049_2:walk] remove walk