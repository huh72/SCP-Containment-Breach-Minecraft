#getting player to 173 rotation
execute store result score .playerTo173Rotation v run data get entity @n[tag=lookdetecthandler173] Rotation[0]

#getting player rotation
execute store result score .playerRotation v run data get entity @s Rotation[0]

#find difference
execute store result score .result v run scoreboard players operation .playerTo173Rotation v -= .playerRotation v

#apply abs() if negative
execute if score .result v matches ..-1 run scoreboard players operation .result v *= -1 math



#final
execute if score .result v matches 0..65 run scoreboard players set .playerLookingByX v 1
execute if score .result v matches 300..360 run scoreboard players set .playerLookingByX v 1
