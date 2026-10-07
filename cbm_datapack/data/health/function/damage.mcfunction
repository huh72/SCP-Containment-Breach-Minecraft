#timer till next damage
execute store result score @s bleeding_damage_cd run random value 210..450 cb:bleedingdamagecd

#damage depends on bleeding level
scoreboard players set @s bleeding_damage 1
execute if score @s bleeding matches 2 store result score @s bleeding_damage run random value 1..2 cb:bleedinglevel2damage
execute if score @s bleeding matches 3 store result score @s bleeding_damage run random value 1..3 cb:bleedinglevel3damage
execute if score @s bleeding matches 4 store result score @s bleeding_damage run random value 2..4 cb:bleedinglevel4damage
execute if score @s bleeding matches 5 store result score @s bleeding_damage run random value 3..8 cb:bleedinglevel5damage
execute if score @s bleeding matches 6 store result score @s bleeding_damage run random value 5..10 cb:bleedinglevel6damage
execute if score @s bleeding matches 7 store result score @s bleeding_damage run random value 7..12 cb:bleedinglevel7damage
execute if score @s bleeding matches 8 store result score @s bleeding_damage run random value 9..12 cb:bleedinglevel8damage
execute if score @s bleeding matches 9 store result score @s bleeding_damage run random value 9..13 cb:bleedinglevel9damage
execute if score @s bleeding matches 10 store result score @s bleeding_damage run random value 10..14 cb:bleedinglevel10damage

#damage
scoreboard players operation @s health -= @s bleeding_damage
execute if score @s health matches ..0 run tag @s add d_bleeding