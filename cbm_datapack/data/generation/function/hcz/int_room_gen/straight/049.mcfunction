$execute if entity @s[tag=1] positioned ~ ~1 ~-2 run place template $(room)0
$execute if entity @s[tag=2] positioned ~-2 ~1 ~ run place template $(room)1

execute if entity @s[tag=1] run say 1
execute if entity @s[tag=2] run say 2

kill @s