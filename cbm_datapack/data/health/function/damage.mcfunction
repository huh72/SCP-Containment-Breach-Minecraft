#timer till next damage
execute store result score @s bleeding_damage_cd run random value 300..750 cb:bleedingdamagecd

#damage depends on bleeding level
execute if score @s bleeding matches 1 store result score @s bleeding_damage run random value 0..2 cb:bleedinglevel1damage
execute if score @s bleeding matches 2 store result score @s bleeding_damage run random value 1..2 cb:bleedinglevel2damage
execute if score @s bleeding matches 3 store result score @s bleeding_damage run random value 2..4 cb:bleedinglevel3damage
execute if score @s bleeding matches 4 store result score @s bleeding_damage run random value 3..5 cb:bleedinglevel4damage
execute if score @s bleeding matches 5 store result score @s bleeding_damage run random value 6..8 cb:bleedinglevel5damage
execute if score @s bleeding matches 6 store result score @s bleeding_damage run random value 8..10 cb:bleedinglevel6damage
execute if score @s bleeding matches 7 store result score @s bleeding_damage run random value 8..12 cb:bleedinglevel7damage
execute if score @s bleeding matches 8 store result score @s bleeding_damage run random value 9..13 cb:bleedinglevel8damage
execute if score @s bleeding matches 9 store result score @s bleeding_damage run random value 10..14 cb:bleedinglevel9damage
execute if score @s bleeding matches 10 store result score @s bleeding_damage run random value 10..15 cb:bleedinglevel10damage

#damage
scoreboard players operation @s health -= @s bleeding_damage
execute if score @s health matches ..0 run tag @s add d_bleeding