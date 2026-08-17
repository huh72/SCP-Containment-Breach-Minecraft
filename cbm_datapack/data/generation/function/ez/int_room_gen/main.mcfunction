### straights
# medibay
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:medibay","x0":"0","y0":"1","z0":"-2","x1":"-2","y1":"1","z1":"0"}
#tesla
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:tesla","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:tesla","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s if predicate generation:50 run function generation:ez/int_room_gen/str {"room":"ez:tesla","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s if predicate generation:50 run function generation:ez/int_room_gen/str {"room":"ez:tesla","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s if predicate generation:50 run function generation:ez/int_room_gen/str {"room":"ez:tesla","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s if predicate generation:50 run function generation:ez/int_room_gen/str {"room":"ez:tesla","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}

#type 1
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:str1_","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:str1_","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s if predicate generation:50 run function generation:ez/int_room_gen/str {"room":"ez:str1_","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s if predicate generation:50 run function generation:ez/int_room_gen/str {"room":"ez:str1_","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}

#type 2 (room close to gate B)
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:str2_","x0":"0","y0":"-1","z0":"6","x1":"6","y1":"-1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s if predicate generation:50 run function generation:ez/int_room_gen/str {"room":"ez:str2_","x0":"0","y0":"-1","z0":"6","x1":"6","y1":"-1","z1":"0"}

#type 3 (with pd)
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:str3_","x0":"0","y0":"1","z0":"-3","x1":"-3","y1":"1","z1":"0"}

#type 4 (Dr.Harp & Manyard office)
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:str4_","x0":"0","y0":"1","z0":"5","x1":"5","y1":"1","z1":"0"}

#type 5 with tables
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:str5_","x0":"0","y0":"1","z0":"-1","x1":"-1","y1":"1","z1":"0"}
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s if predicate generation:50 run function generation:ez/int_room_gen/str {"room":"ez:str5_","x0":"0","y0":"1","z0":"-1","x1":"-1","y1":"1","z1":"0"}

#type 6 (420j office)
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:str6_","x0":"0","y0":"1","z0":"-10","x1":"-10","y1":"1","z1":"0"}

#type 7 (Cafeteria) - last str (on 16/06/25)
execute as @e[tag=str,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/str {"room":"ez:str7_","x0":"0","y0":"-4","z0":"-7","x1":"-7","y1":"-4","z1":"0"}


#corner - electric center
execute as @e[tag=corner,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/electric_center {"room":"ez:corner"}


# dead end - elevators
execute as @e[tag=dd,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/dd/elev {"room":"ez:dd0_"}

# dead end - gate A
execute as @e[tag=dd,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/dd/gatea {"room":"ez:gatea_"}
# execute as @e[tag=dd,tag=ez] at @s run function generation:ez/int_room_gen/dd/gateb {"room":"ez:gateb_"}

# # # dead end - gate B
execute as @e[tag=dd,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/dd/gateb {"room":"ez:gateb_"}


#t-formed
execute as @e[tag=t_f,tag=ez,sort=random,limit=1] at @s run function generation:ez/int_room_gen/t_formed/type2 {"room":"ez:t_f0_"}


#setting tesla gates vars after zone 3 generation
function tesla:set_vars

#ez doors' markers unity
execute as @e[type=marker,tag=door_marker2] at @s run function doors:unity_cycle_ez/cycle

tag @e[tag=door_marker_ez] add door_marker
tag @e[type=marker,tag=door_marker,tag=!card,tag=!sc,tag=!checkpoint] add button
scoreboard players set @e[type=marker,tag=door_marker_ez] door_interact_cd 0
scoreboard players set @e[type=marker,tag=door_marker_checkpoint] card_interact_cd 0
scoreboard players set @e[type=marker,tag=card] card_interact_cd 0

#g announc and mtf-related stuff
scoreboard players set isEnteredEz announcTimer 0
scoreboard players set . announcTimer -1
scoreboard players set .state event.079 0

tag @e[tag=door_marker] add door
tag @e[tag=door_marker_hcz] add door
tag @e[tag=door_marker_ez] add door
tag @e[tag=door_marker_checkpoint] add door

kill @e[tag=str,tag=ez]
kill @e[tag=dd,tag=ez]
kill @e[tag=corner,tag=ez]
kill @e[tag=t_f,tag=ez]
kill @e[tag=x_f,tag=ez]
kill @e[type=item]