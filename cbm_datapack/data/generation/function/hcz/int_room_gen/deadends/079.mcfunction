execute positioned ~ ~1 ~ run place template lcz:empty_small

$execute if entity @s[tag=13] positioned ~ ~-8 ~5 run place template $(room)1
# $execute if entity @s[tag=14] positioned ~-11 ~-8 ~ run place template $(room)2
$execute if entity @s[tag=15] positioned ~-10 ~-8 ~-11 run place template $(room)3
$execute if entity @s[tag=16] positioned ~-11 ~-8 ~ run place template $(room)2

kill @s
