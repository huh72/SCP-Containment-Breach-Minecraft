#elevator config goes here:
# tellraw @a [{"text":"Damn bro! Datapck was loaded! Yay!🎉🎉🎉","color":"yellow"}]
scoreboard objectives add elevatorRightClick minecraft.used:minecraft.carrot_on_a_stick

#tech elevator
scoreboard objectives add rotX dummy
scoreboard objectives add elevator dummy

scoreboard objectives add playerPosX dummy
scoreboard objectives add playerPosZ dummy
scoreboard objectives add playerPosY dummy

scoreboard objectives add elevatorMarkerPosX dummy
scoreboard objectives add elevatorMarkerPosZ dummy
scoreboard objectives add elevatorMarkerPosY dummy

scoreboard objectives add marker1PosX dummy
scoreboard objectives add marker1PosZ dummy

scoreboard objectives add marker2PosX dummy
scoreboard objectives add marker2PosX dummy


scoreboard objectives add tempMath dummy

scoreboard objectives add math dummy
scoreboard players set 1000 math 1000

#logic elevator
scoreboard objectives add ID dummy
scoreboard objectives add level dummy
scoreboard objectives add onLevel dummy
scoreboard objectives add moveTime dummy
scoreboard objectives add isCalled dummy

scoreboard players set .moveSoundElevator moveTime 25
scoreboard players set .playerTP moveTime 60
scoreboard players set .stop moveTime 170
scoreboard players set .max moveTime 200

# 0 - 0
# 1 - 90
# 2 - 180
# 3 - 270


# where:
#execute store result score @n 939posX run - запись
#data get entity @n Pos[1] -  что записать


# Pos[0] {X}/Pos[1] (Y)/Pos[2] (Z)
# Rotation[0] (X)/ Rotation[1] (Y)