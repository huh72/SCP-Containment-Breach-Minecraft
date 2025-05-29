### straights
# warhead
execute as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/warhead {"room":"hcz:warhead"}
#tesla
execute as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}
execute as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}
#chances tesla
execute unless predicate generation:20 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}
execute if predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}
execute if predicate generation:20 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}
# #another type
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}


### DEADENDS
# scp 035
execute as @e[tag=dd,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/deadends/035 {"room":"hcz:dd_035_"}
# scp 008
execute as @e[tag=dd,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/deadends/008 {"room":"hcz:dd_008_"}
# scp 079
execute as @e[tag=dd,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/deadends/079 {"room":"hcz:dd_079_"}
# scp 106
execute as @e[tag=dd,sort=random,limit=1] at @s positioned ~ ~ ~ run function generation:hcz/int_room_gen/deadends/106 {"room":"hcz:dd_106_p0_"}



#setting tesla gates vars after zone 2 generation
function tesla:set_vars


kill @e[tag=str]
kill @e[tag=dd]
kill @e[tag=corner]
kill @e[tag=t_f]
kill @e[tag=x_f]