execute positioned ~ ~1 ~ run place template lcz:empty_small

$execute if entity @s[tag=13] positioned ~3 ~1 ~-2 run place template $(room)0
$execute if entity @s[tag=14] positioned ~2 ~1 ~ run place template $(room)2
$execute if entity @s[tag=15] positioned ~ ~1 ~ run place template $(room)3
$execute if entity @s[tag=16] positioned ~ ~1 ~ run place template $(room)1

execute if entity @s[tag=14] run say 14

kill @s
