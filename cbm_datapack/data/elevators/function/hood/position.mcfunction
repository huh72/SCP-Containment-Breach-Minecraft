#Поворот / Rotation
execute store result score @n[tag=target] rotX run data get entity @n[tag=target] Rotation[0]
execute store result score @n[tag=elevator_1] rotX run data get entity @n[tag=elevator_1] Rotation[0]
execute store result score @n[tag=elevator_2] rotX run data get entity @n[tag=elevator_2] Rotation[0]
execute store result storage cb:elevator elevator_diff_rotation int 1 run scoreboard players operation @n[tag=elevator_1] rotX -= @n[tag=elevator_2] rotX 



#Позиция / Position
#player
execute store result storage cb:elevator playerPosX float 0.001 run data get entity @p[tag=target] Pos[0] 1000
execute store result storage cb:elevator playerPosZ float 0.001 run data get entity @p[tag=target] Pos[2] 1000

#marker1
execute store result storage cb:elevator marker1PosX float 0.001 run data get entity @n[tag=elevator_1] Pos[0] 1000
execute store result storage cb:elevator marker1PosZ float 0.001 run data get entity @n[tag=elevator_1] Pos[2] 1000

#marker2
execute store result storage cb:elevator marker2PosX float 0.001 run data get entity @n[tag=elevator_2] Pos[0] 1000
execute store result storage cb:elevator marker2PosZ float 0.001 run data get entity @n[tag=elevator_2] Pos[2] 1000



# * 1000
execute store result score @p[tag=target] playerPosX run data get storage cb:elevator playerPosX 1000
execute store result score @p[tag=target] playerPosZ run data get storage cb:elevator playerPosZ 1000

execute store result score @p[tag=target] marker1PosX run data get storage cb:elevator marker1PosX 1000
execute store result score @p[tag=target] marker1PosZ run data get storage cb:elevator marker1PosZ 1000

execute store result score @p[tag=target] marker2PosX run data get storage cb:elevator marker2PosX 1000
execute store result score @p[tag=target] marker2PosZ run data get storage cb:elevator marker2PosZ 1000




execute store result storage cb:elevator resultX float 0.001 run scoreboard players operation @p[tag=target] marker1PosX -= @p[tag=target] playerPosX
execute store result storage cb:elevator resultZ float 0.001 run scoreboard players operation @p[tag=target] marker1PosZ -= @p[tag=target] playerPosZ
execute store result storage cb:elevator resultY int 1 run data get entity @n[tag=e,sort=furthest] Pos[1]

function elevators:hood/tp with storage cb:elevator

