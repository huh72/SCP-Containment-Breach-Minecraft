# execute positioned ~ ~1 ~ run place template lcz:empty_small

#7
$execute if entity @s[tag=7] positioned ~ ~1 ~ run place template $(room)0
#8 - ok
$execute if entity @s[tag=8] positioned ~ ~1 ~6 run place template $(room)3
#9
$execute if entity @s[tag=9] positioned ~6 ~1 ~ run place template $(room)2

#10
$execute if entity @s[tag=10] positioned ~ ~1 ~ run place template $(room)1

kill @s