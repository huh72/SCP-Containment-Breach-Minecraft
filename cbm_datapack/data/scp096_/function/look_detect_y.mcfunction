execute store result score @n[tag=scp096_playermarker] rot096y run data get entity @n[tag=scp096_playermarker] Rotation[1]
execute store result score @s rot096y run data get entity @s Rotation[1]

execute store result score @s rot096y run scoreboard players operation @n[tag=scp096_playermarker] rot096y -= @s rot096y


# execute if score res* rot096y matches -45..60 if score look_on_096x v matches 1.. run scoreboard players add look_on_096y v 1

execute if score @s rot096y matches -30..50 run tag @s add see096y