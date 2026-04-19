execute store result storage cb:elevator moveOnZ float 0.001 run scoreboard players operation .e elevatorMarkerPosX -= .e playerPosX
execute store result storage cb:elevator moveOnX float -0.001 run scoreboard players operation .e elevatorMarkerPosZ -= .e playerPosZ

say rot1

scoreboard players add .result elevator 180
execute store result storage cb:elevator diffRotX int 1 run scoreboard players get .result elevator

function elevators:hood/tp with storage cb:elevator