tag @a remove 106target

function scp106:pd_shrink/spawn

tp @n[tag=106origin] ~ ~-2.25 ~
scoreboard players set 106 appear_timer 0
scoreboard players set 106 scp106state 0
scoreboard players set 106 hunting 1
scoreboard players set 106 breath_cd 0
scoreboard players set 106 laugh_cd 20
execute as @n[tag=aj.scp106.root] run function animated_java:scp106/animations/idle/play