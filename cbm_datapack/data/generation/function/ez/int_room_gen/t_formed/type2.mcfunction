# execute positioned ~ ~1 ~ run place template lcz:empty_small

$execute if entity @s[tag=7] positioned ~ ~1 ~ run place template $(room)3
$execute if entity @s[tag=8] positioned ~ ~1 ~-1 run place template $(room)0
$execute if entity @s[tag=9] positioned ~-1 ~1 ~ run place template $(room)1
$execute if entity @s[tag=10] positioned ~ ~1 ~ run place template $(room)2

# execute if entity @s[tag=7] run say 7!
# execute if entity @s[tag=8] run say 8!
# execute if entity @s[tag=9] run say 9!
# execute if entity @s[tag=10] run say 10!

kill @s