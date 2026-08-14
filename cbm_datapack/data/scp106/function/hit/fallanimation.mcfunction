tag @s remove 106target
scoreboard players add @s fallinpdanimation 1
scoreboard players set @s fall 0

#g move player
tp @s ~ ~-1.25 ~ ~ -90

execute if score @s fallinpdanimation = max fallinpdanimation run function scp106:pd/tp