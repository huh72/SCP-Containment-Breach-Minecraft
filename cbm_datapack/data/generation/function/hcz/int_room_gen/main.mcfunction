#049 chamber room
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/049 {"room":"hcz:049_"}

#another type -- 3
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str3_0 {"room":"hcz:str3_"}
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str3_0 {"room":"hcz:str3_"}
execute if predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str3_0 {"room":"hcz:str3_"}

### straights
# warhead
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/warhead {"room":"hcz:warhead"}


#another type -- 2
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str2_0 {"room":"hcz:str2_"}
execute if predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str2_0 {"room":"hcz:str2_"}

#t-formed another type -- 1
# execute as @e[tag=t_f,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/t_formed/type2 {"room":"hcz:t_formed2_"}
# execute as @e[tag=t_f,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/t_formed/type2 {"room":"hcz:t_formed2_"}
# execute as @e[tag=t_f,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/t_formed/type2 {"room":"hcz:t_formed2_"}
# execute if predicate generation:50 as @e[tag=t_f,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/t_formed/type2 {"room":"t_formed2_"}

#another type -- 4
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str4_0 {"room":"hcz:str4_"}
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str4_0 {"room":"hcz:str4_"}
execute if predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str4_0 {"room":"hcz:str4_"}

#tesla
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}
#chances tesla
execute unless predicate generation:20 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}
execute if predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}
execute if predicate generation:20 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/tesla {"room":"hcz:tesla"}


#another type -- 1
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}
execute unless predicate generation:50 as @e[tag=str,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/straight/str1_0 {"room":"hcz:str1_"}

# #another type of x-formed
execute as @e[tag=x_f,tag=hcz] at @s run function generation:hcz/int_room_gen/x_formed/x_formed1

### DEADENDS
# scp 035
execute as @e[tag=dd,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/deadends/035 {"room":"hcz:dd_035_"}
# scp 008
execute as @e[tag=dd,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/deadends/008 {"room":"hcz:dd_008_"}
# scp 079
execute as @e[tag=dd,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/deadends/079 {"room":"hcz:dd_079_"}
# scp 106
execute as @e[tag=dd,tag=hcz,sort=random,limit=1] at @s run function generation:hcz/int_room_gen/deadends/106 {"room":"hcz:dd_106_p0_"}


#setting tesla gates vars after zone 2 generation
function tesla:set_vars


execute as @e[type=marker,tag=door_marker1] at @s run function doors:unity_cycle_hcz/cycle

#checkpoint door
# execute as @e[tag=door_marker_check0] at @s rotated 0 0 run function animated_java:door_check0/summon with storage aj:temp
# tag @e[tag=door_marker_check0] add closed
# tag @e[tag=door_marker_check0] add blocked
# tag @e[tag=door_marker_check0] remove door_marker

# execute as @e[tag=door_marker,tag=card,tag=!door_marker_check0] at @s run function doors:spawn_door_card

execute at @e[tag=door_marker_checkpoint,tag=ez] rotated 0 0 run function animated_java:door_check0/summon with storage aj:temp
scoreboard players set @e[tag=door_marker_checkpoint] door_checkpoint_timer 150
tag @e[tag=door_marker_checkpoint] add blocked

tag @e[tag=door_marker] add door
tag @e[tag=door_marker_hcz] add door
tag @e[tag=door_marker_ez] add door
tag @e[tag=door_marker_checkpoint] add door
tag @e[tag=door_marker_checkpoint] add door_lock
tag @e[tag=door_marker,tag=card] add door_lock

tag @e[type=marker,tag=door_marker_hcz,tag=!card,tag=!sc,tag=!checkpoint] add button
scoreboard players set @e[type=marker,tag=door] door_interact_cd 0
scoreboard players set @e[type=marker,tag=door_lock] card_interact_cd 0
scoreboard players set @e[type=marker,tag=door_marker_checkpoint,tag=ez] access_level 4

kill @e[tag=str,tag=hcz]
kill @e[tag=dd,tag=hcz]
kill @e[tag=corner,tag=hcz]
kill @e[tag=t_f,tag=hcz]
kill @e[tag=x_f,tag=hcz]