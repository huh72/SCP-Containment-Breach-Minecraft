### straight
#tesla
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/tesla {"room":"lcz:str/tesla"}
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/tesla {"room":"lcz:str/tesla"}
#chance tesla
execute unless predicate generation:20 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/tesla {"room":"lcz:str/tesla"}
execute if predicate generation:50 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/tesla {"room":"lcz:str/tesla"}
execute if predicate generation:20 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/tesla {"room":"lcz:str/tesla"}

#another type
execute unless predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/type {"room":"lcz:str/type"}
execute unless predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/type {"room":"lcz:str/type"}
execute unless predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/type {"room":"lcz:str/type"}
execute unless predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/type {"room":"lcz:str/type"}
execute unless predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/type {"room":"lcz:str/type"}
execute unless predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/type {"room":"lcz:str/type"}
execute unless predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/type {"room":"lcz:str/type"}
execute unless predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/type {"room":"lcz:str/type"}

#fake elevators
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/fake_elev {"room":"lcz:str/fake_elev"}
execute unless predicate generation:20 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/fake_elev {"room":"lcz:str/fake_elev"}

#vents room
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/vents {"room":"lcz:str/vents"}
execute unless predicate generation:30 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/vents {"room":"lcz:str/vents"}
execute if predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/vents {"room":"lcz:str/vents"}

#airlock with red light
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/airlock3 {"room":"lcz:str/airlock3_"}
execute if predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/airlock3 {"room":"lcz:str/airlock3_"}

#storeroom with trigger 173
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/storeroom {"room":"lcz:str/storeroom"}

#room with trigger 173 and card 2 and snav
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/card2_173_trigger {"room":"lcz:str/card2_173_"}

#scp860_714
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/scp714_860 {"room":"lcz:str/860_"}

#scp1499_chamber
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/1499_ {"room":"lcz:str/1499_"}

#939_elevator
execute as @e[tag=corner,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/corner/elevator {"room":"lcz:cor/elev"}

#second type of corner
execute as @e[tag=corner,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/corner/type2 {"room":"lcz:cor/type2_"}
execute unless predicate generation:30 as @e[tag=corner,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/corner/type2 {"room":"lcz:cor/type2_"}
execute if predicate generation:30 as @e[tag=corner,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/corner/type2 {"room":"lcz:cor/type2_"}

#x_formed type 2 (metal_way)
execute as @e[tag=x_f,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/x_formed/type2 {"room":"lcz:x_formed1_0"}
execute if predicate generation:50 as @e[tag=x_f,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/x_formed/type2 {"room":"lcz:x_formed1_0"}

#173 trigger room [!]
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/173_trigger {"room":"lcz:str/173_tr"}
execute unless predicate generation:30 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/173_trigger {"room":"lcz:str/173_tr"}

#airlock with guard [! gen last?]
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/airlock1 {"room":"lcz:str/airlock1_"}
execute if predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/airlock1 {"room":"lcz:str/airlock1_"}

#airlock with guard 2 [! gen last?]
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/airlock2 {"room":"lcz:str/airlock2_"}
execute if predicate generation:40 as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/airlock2 {"room":"lcz:str/airlock2_"}


### deadend
# gen after another
execute as @e[tag=dd,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/deadends/deadends {"room":"lcz:deadend/914_"}
#372 [!]
execute as @e[tag=dd,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/deadends/deadends {"room":"lcz:deadend/372_"}
execute as @e[tag=dd,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/deadends/archive {"room":"lcz:deadend/archive_"}
execute as @e[tag=dd,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/deadends/elevator {"room":"lcz:deadend/elevator_"}

#electrical centre with trigger 049
execute as @e[tag=str,sort=random,limit=1] at @s run function generation:lcz/int_room_gen/straight/049_elc {"room":"lcz:str/049_elc"}

#setting tesla gates vars after zone 1 generation
function tesla:set_vars

execute as @e[tag=door_marker0] at @s run function doors:unity_cycle/cycle

#checkpoint door
execute as @e[tag=door_marker_check0] at @s rotated 0 0 run function animated_java:door_check0/summon with storage aj:temp
tag @e[tag=door_marker_check0] add closed
tag @e[tag=door_marker_check0] add blocked
tag @e[tag=door_marker_check0] remove door_marker

execute as @e[tag=door_marker,tag=card,tag=!door_marker_check0] at @s run function doors:spawn_door_card


scoreboard players set @e[tag=door_marker] door_interact_cd 0

kill @e[tag=str,tag=lcz]
kill @e[tag=dd,tag=lcz]
kill @e[tag=corner,tag=lcz]
kill @e[tag=t_f,tag=lcz]
kill @e[tag=x_f,tag=lcz]