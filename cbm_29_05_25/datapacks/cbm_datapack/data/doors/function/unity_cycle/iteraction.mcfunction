#2 markers -> 1 marker
tag @s add duo
tag @n[tag=door_marker0,tag=!duo] add duo
execute if entity @s[tag=r0] run tag @e[tag=duo,distance=..1] add r0
execute if entity @s[tag=r1] run tag @e[tag=duo,distance=..1] add r1
kill @n[tag=duo,limit=1]

#tags managment
tag @e[tag=duo,distance=..1] add door_marker
tag @e[tag=duo,distance=..1] remove door_marker0
scoreboard players set @e[tag=duo,distance=..1] door_interact_cd 10
#
scoreboard players set @e[tag=duo,distance=..1] access_level 0
tag @e[tag=duo,distance=..1] add closed
tag @e[tag=duo,distance=..1] add free
tag @e[tag=duo,distance=..1] add dr.not_rendered
tag @e[tag=duo,distance=..1] remove duo

#next iteraction
function doors:unity_cycle/cycle

