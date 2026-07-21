

#Поворот / Rotation 
# execute store result score .playerRotation elevator rundata get entity @n[tag=target] Rotation[0]
execute store result score .startRotation elevator run data get entity @n[tag=currElevator] Rotation[0]
execute store result score .finalRotation elevator run data get entity @n[tag=finalElevator] Rotation[0]
execute store result score .result elevator run scoreboard players operation .startRotation elevator -= .finalRotation elevator 
execute store result storage cb:elevator diffRotX int 1 run scoreboard players get .result elevator




#Позиция / Position
#player
execute store result storage cb:elevator playerPosX float 0.001 run data get entity @s Pos[0] 1000
execute store result storage cb:elevator playerPosZ float 0.001 run data get entity @s Pos[2] 1000

#marker1
execute store result storage cb:elevator elevatorMarkerPosX float 0.001 run data get entity @n[tag=currElevator] Pos[0] 1000
execute store result storage cb:elevator elevatorMarkerPosZ float 0.001 run data get entity @n[tag=currElevator] Pos[2] 1000




# * 1000
execute store result score .e playerPosX run data get storage cb:elevator playerPosX 1000
execute store result score .e playerPosZ run data get storage cb:elevator playerPosZ 1000

execute store result score .e elevatorMarkerPosX run data get storage cb:elevator elevatorMarkerPosX 1000
execute store result score .e elevatorMarkerPosZ run data get storage cb:elevator elevatorMarkerPosZ 1000





# execute store result storage cb:elevator moveOnX float 0.001 run scoreboard players operation .e currMarkerPosX -= .e playerPosX
# execute store result storage cb:elevator moveOnZ float 0.001 run scoreboard players operation .e currMarkerPosZ -= .e playerPosZ
# execute store result storage cb:elevator resultY int 1 run data get entity @n[tag=e,sort=furthest] Pos[1]

# function elevators:tp with storage cb:elevator


# execute store result score .currRotation elevator run data get entity @n[tag=curr] Rotation[0]
# execute store result score .notCurrRotation elevator run data get entity @n[tag=e,tag=!curr] Rotation[0]

tag @s add tpTarget

# tellraw @a {"score":{"name":".result","objective":"elevator"}}
execute if score .result elevator matches 0 run return run function elevators:rotation/0
execute if score .result elevator matches 90 run return run function elevators:rotation/1
execute if score .result elevator matches -270 run return run function elevators:rotation/1
execute if score .result elevator matches 180 run return run function elevators:rotation/2
execute if score .result elevator matches -180 run return run function elevators:rotation/2
execute if score .result elevator matches -90 run return run function elevators:rotation/3
execute if score .result elevator matches 270 run return run function elevators:rotation/3
