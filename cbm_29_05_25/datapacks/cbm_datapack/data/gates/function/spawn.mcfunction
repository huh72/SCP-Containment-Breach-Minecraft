#rotation check
#scoreboard players set @p[y_rotation=315..45] look_vec 0
#scoreboard players set @p[y_rotation=45..135] look_vec 1
#scoreboard players set @p[y_rotation=135..225] look_vec 2
#scoreboard players set @p[y_rotation=225..315] look_vec 3

#spawn first
#execute if score @p look_vec matches 0 run summon minecraft:interaction ~ ~-3 ~ {Tags:['gate','close','main','new','1'],Rotation:[0f,0f]}
#execute if score @p look_vec matches 1 run summon minecraft:interaction ~ ~-3 ~ {Tags:['gate','close','main','new','1'],Rotation:[90f,0f]}
#execute if score @p look_vec matches 2 run summon minecraft:interaction ~ ~-3 ~ {Tags:['gate','close','main','new','1'],Rotation:[180f,0f]}
#execute if score @p look_vec matches 3 run summon minecraft:interaction ~ ~-3 ~ {Tags:['gate','close','main','new','1'],Rotation:[270f,0f]}

#spawn second
#execute if score @p look_vec matches 0 run summon minecraft:interaction ~ ~-3 ~ {Tags:['gate','close','main','new','2'],Rotation:[0f,0f]}
#execute if score @p look_vec matches 1 run summon minecraft:interaction ~ ~-3 ~ {Tags:['gate','close','main','new','2'],Rotation:[90f,0f]}
#execute if score @p look_vec matches 2 run summon minecraft:interaction ~ ~-3 ~ {Tags:['gate','close','main','new','2'],Rotation:[180f,0f]}
#execute if score @p look_vec matches 3 run summon minecraft:interaction ~ ~-3 ~ {Tags:['gate','close','main','new','2'],Rotation:[270f,0f]}


#!summon minecraft:marker ~ ~ ~ {Tags:['gate_origin']}

#spawn vars
scoreboard players set @e[tag=gate] gate_close_speed 0
scoreboard players set @e[tag=gate] gate_open_speed 0
scoreboard players operation @e[tag=gate] gate_interact_cd = max* gate_interact_cd

#global var add
scoreboard players add max* gate_global_num 1
scoreboard players operation @e[tag=gate] gate_global_num = max* gate_global_num






