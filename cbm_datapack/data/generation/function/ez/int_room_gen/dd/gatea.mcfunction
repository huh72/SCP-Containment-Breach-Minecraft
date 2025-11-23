$execute if entity @s[tag=13] positioned ~ ~1 ~1 run place template $(room)0
$execute if entity @s[tag=14] positioned ~ ~-9 ~2 run place template $(room)1
$execute if entity @s[tag=15] positioned ~-2 ~1 ~2 run place template $(room)2
$execute if entity @s[tag=16] positioned ~2 ~1 ~ run place template $(room)3

# execute if entity @s[tag=13] run say 13!
# execute if entity @s[tag=14] run say 14!
# execute if entity @s[tag=15] run say 15!
# execute if entity @s[tag=16] run say 16!

kill @s