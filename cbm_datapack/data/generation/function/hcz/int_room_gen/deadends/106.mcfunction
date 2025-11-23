execute positioned ~ ~1 ~ run place template lcz:empty_small

#13
$execute if entity @s[tag=13] positioned ~ ~-14 ~-7 run place template $(room)1
execute if entity @s[tag=13] positioned ~48 ~-14 ~-7 run place template hcz:dd_106_p1_1

#14
# $execute if entity @s[tag=14] positioned ~-21 ~-14 ~ run place template $(room)2

#15
$execute if entity @s[tag=15] positioned ~-28 ~-14 ~-21 run place template $(room)3
execute if entity @s[tag=15] positioned ~-38 ~-14 ~-21 run place template hcz:dd_106_p1_3

#16
$execute if entity @s[tag=16] positioned ~-21 ~-14 ~ run place template $(room)2
execute if entity @s[tag=16] positioned ~-21 ~-14 ~48 run place template hcz:dd_106_p1_2


kill @s
