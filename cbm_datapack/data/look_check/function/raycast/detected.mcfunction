scoreboard players set .iterations lookcheck 999

$tag @s add $(objectName).hasLineOfSight
tag @s add hasLineOfSight

tag @s remove hasLineOfSight0
tag @s remove hasLineOfSight1
tag @s remove hasLineOfSight2
tag @s remove hasLineOfSight3
tag @s remove hasLineOfSight4

execute if score .currDistance lookcheck matches 0 run tag @s add hasLineOfSight0
execute if score .currDistance lookcheck matches 1 run tag @s add hasLineOfSight1
execute if score .currDistance lookcheck matches 2 run tag @s add hasLineOfSight2
execute if score .currDistance lookcheck matches 3 run tag @s add hasLineOfSight3
execute if score .currDistance lookcheck matches 4 run tag @s add hasLineOfSight4