summon marker ~ ~ ~ {Tags:["lever_marker"]}
data modify entity @n[type=marker,tag=lever_marker] Rotation set from entity @s Rotation

execute if entity @s[tag=down] run tag @n[tag=lever_marker] add down
execute if entity @s[tag=up] run tag @n[tag=lever_marker] add up
execute if entity @s[tag=lczlockdown] run tag @n[tag=lever_marker] add lczlockdown
#g elc center in ez
execute if entity @s[tag=elc.primaryLighting] run tag @n[tag=lever_marker] add elc.primaryLighting
execute if entity @s[tag=elc.secondaryLighting] run tag @n[tag=lever_marker] add elc.secondaryLighting
execute if entity @s[tag=elc.doorControl] run tag @n[tag=lever_marker] add elc.doorControl

function animated_java:lever/remove/this
