tp @n[tag=scp106] ~ ~-2 ~
scoreboard players operation 106 breath_cd = max breath_cd
scoreboard players set 106 laugh_cd 0
scoreboard players operation 106 step_on_shrink_cd = max step_on_shrink_cd
scoreboard players remove 106 breath_cd 1
scoreboard players add 106 appear_timer 1
execute at @n[tag=scp106] positioned ~ ~2.01 ~ run function scp106:pd_shrink/spawn
execute as @n[tag=aj.scp106.root] run function animated_java:scp106/animations/idle/play with storage aj:temp
tag @s remove hunting