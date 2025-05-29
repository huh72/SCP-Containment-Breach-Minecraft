execute positioned ~ ~1 ~ run place template lcz:empty_small

$execute if entity @s[tag=13] positioned ~5 ~-8 ~-10 run place template $(room)0
$execute if entity @s[tag=14] positioned ~-11 ~-8 ~ run place template $(room)2

kill @s
