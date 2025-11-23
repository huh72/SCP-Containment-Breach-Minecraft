execute store result score @n[tag=scp173_playermarker] rot173y run data get entity @n[tag=scp173_playermarker] Rotation[1]
execute store result score @s rot173y run data get entity @s Rotation[1]

execute store result score res* rot173y run scoreboard players operation @n[tag=scp173_playermarker] rot173y -= @s rot173y


execute if score res* rot173y matches -45..60 if score look_on_173x v matches 1.. run scoreboard players add look_on_173y v 1