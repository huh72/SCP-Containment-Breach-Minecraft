scoreboard players set .iterations lookcheck 999

$tag @s add $(objectName).hasLineOfSight
tag @s add hasLineOfSight

execute if score .currDistance lookcheck matches 0 run tag @s add hasLineOfSight0
execute if score .currDistance lookcheck matches 1 run tag @s add hasLineOfSight1
execute if score .currDistance lookcheck matches 2 run tag @s add hasLineOfSight2
execute if score .currDistance lookcheck matches 3 run tag @s add hasLineOfSight3
execute if score .currDistance lookcheck matches 4 run tag @s add hasLineOfSight4

title @s[tag=hasLineOfSight0] actionbar [{"text":"dist: 0 | result: "}]
title @s[tag=hasLineOfSight1] actionbar [{"text":"dist: 1 | result: "}]
title @s[tag=hasLineOfSight2] actionbar [{"text":"dist: 2 | result: "}]
title @s[tag=hasLineOfSight3] actionbar [{"text":"dist: 3 | result: "}]
title @s[tag=hasLineOfSight4] actionbar [{"text":"dist: 4 | result: "}]