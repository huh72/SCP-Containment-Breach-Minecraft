execute store result storage cb:elevator moveOnX float -0.001 run scoreboard players operation .e elevatorMarkerPosX -= .e playerPosX
execute store result storage cb:elevator moveOnZ float -0.001 run scoreboard players operation .e elevatorMarkerPosZ -= .e playerPosZ

execute store result storage cb:elevator diffRotX int 1 run scoreboard players get .result elevator

say rot0

function elevators:hood/tp with storage cb:elevator