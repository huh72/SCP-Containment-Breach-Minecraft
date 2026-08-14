tag @a remove checking
tag @a remove checked

#g add target tag
execute as @a[tag=!hitby106,tag=!dead] at @s run function scp106:definetarget/loop
execute unless entity @a[tag=106target] run tag @a[tag=!hitby106] add 106target

#g remove tag

execute as @a[tag=106target, tag=insideElevator] at @s if score @n[tag=elevator] moveTime matches 15..195 unless entity @n[tag=106origin, tag=insideElevator, distance=..5] run tag @p[tag=106target, tag=insideElevator] remove 106target