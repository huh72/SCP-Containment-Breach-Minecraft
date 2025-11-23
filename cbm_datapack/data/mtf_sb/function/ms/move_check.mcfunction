execute store result score @s Xpos run data get entity @s Pos[0] 1
execute store result score @s Zpos run data get entity @s Pos[2] 1

execute unless score @s Xpos = @s pXpos run tag @s add moved
execute unless score @s Zpos = @s pZpos run tag @s add moved

scoreboard players operation @s pXpos = @s Xpos
scoreboard players operation @s pZpos = @s Zpos

tag @s add move_checked