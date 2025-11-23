execute store result score @s Xpos run data get entity @s Pos[0] 1
execute store result score @s Zpos run data get entity @s Pos[2] 1

execute unless score @s Xpos = prev* Xpos run tag @s add moved
execute unless score @s Zpos = prev* Zpos run tag @s add moved

scoreboard players operation prev* Xpos = @s Xpos
scoreboard players operation prev* Zpos = @s Zpos

tag @s add move_checked