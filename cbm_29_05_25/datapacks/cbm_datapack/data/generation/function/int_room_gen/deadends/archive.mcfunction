place template lcz:empty_small

$execute if entity @s[tag=13] positioned ~3 ~ ~ run place template $(room)4
$execute if entity @s[tag=15] positioned ~ ~ ~-3 run place template $(room)1
$execute if entity @s[tag=14] positioned ~-3 ~ ~ run place template $(room)2
$execute if entity @s[tag=16] positioned ~4 ~ ~3 run place template $(room)3

kill @s
