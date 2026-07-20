#//g get angles
tp @n[tag=look_check.helper] @p
$rotate @n[tag=look_check.helper] facing entity $(object)] eyes
execute store result score .markerRotX lookcheck run data get entity @n[tag=look_check.helper] Rotation[0]
execute store result score .markerRotY lookcheck run data get entity @n[tag=look_check.helper] Rotation[1]
execute store result score .playerRotX lookcheck run data get entity @s Rotation[0]
execute store result score .playerRotY lookcheck run data get entity @s Rotation[1]

execute store result score .resultX lookcheck run scoreboard players operation .markerRotX lookcheck -= .playerRotX lookcheck
execute store result score .resultY lookcheck run scoreboard players operation .markerRotY lookcheck -= .playerRotY lookcheck


# execute if score .resultY lookcheck matches ..-1 run scoreboard players operation .resultY lookcheck *= -1 math
execute if score .resultX lookcheck matches ..-1 run scoreboard players operation .resultX lookcheck *= -1 math

scoreboard players set .result lookcheck 0
execute if entity @s[tag=hasLineOfSight] if score .resultX lookcheck matches 0..60 run scoreboard players set .result lookcheck 1
execute if entity @s[tag=hasLineOfSight] if score .resultX lookcheck matches 300..360 run scoreboard players set .result lookcheck 2

execute if entity @s[tag=hasLineOfSight] if score .resultY lookcheck matches -60..25 if score .result lookcheck matches 1..2 run scoreboard players set .result lookcheck 3

$execute if score .result lookcheck matches 3 run tag @s add lookingAt$(objectName)

#r if .result lookcheck = 3 : func lookcheck success