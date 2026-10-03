#get player's marker rotation
execute store result score @n[tag=scp173_playermarker] rot173x run data get entity @n[tag=scp173_playermarker] Rotation[0]

#get current player rotation
execute store result score @s rot173x run data get entity @s Rotation[0]


#store result "173's marker rotation - current player rotation" in res*
execute store result score @s rot173x run scoreboard players operation @n[tag=scp173_playermarker] rot173x -= @s rot173x

#module res*
execute if score @s rot173x matches ..-1 run function scp173:abs_x


#set vars
execute if score @s rot173x matches 0..65 run scoreboard players add look_on_173x v 1
execute if score @s rot173x matches 300..360 run scoreboard players add look_on_173x v 1