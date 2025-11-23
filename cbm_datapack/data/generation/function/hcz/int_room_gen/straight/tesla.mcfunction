$execute if entity @s[tag=1] positioned ~ ~ ~6 run place template $(room)0
$execute if entity @s[tag=2] positioned ~6 ~ ~ run place template $(room)1

#chances of tesla to disable
execute if predicate generation:20 run kill @n[tag=tesla_origin]

kill @s