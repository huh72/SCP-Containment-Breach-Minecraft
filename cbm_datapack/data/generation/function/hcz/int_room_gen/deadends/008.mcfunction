execute positioned ~ ~1 ~ run place template lcz:empty_small

$execute if entity @s[tag=13] positioned ~ ~1 ~3 run place template $(room)1
$execute if entity @s[tag=15] positioned ~-2 ~1 ~2 run place template $(room)3
$execute if entity @s[tag=16] positioned ~2 ~1 ~ run place template $(room)2

execute if entity @s[tag=13] run function generation:hcz/int_room_gen/deadends/008/1
execute if entity @s[tag=15] run function generation:hcz/int_room_gen/deadends/008/3
execute if entity @s[tag=16] run function generation:hcz/int_room_gen/deadends/008/2


kill @s
