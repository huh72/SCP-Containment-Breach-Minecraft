$execute if entity @s[tag=1] positioned ~ ~ ~ run place template $(room)1
$execute if entity @s[tag=2] positioned ~ ~ ~ run place template $(room)2

#chances of tesla to disable
execute if predicate generation:20 run kill @n[tag=tesla_origin]
#
kill @s