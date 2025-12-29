#these tags have be removed here because next game will be iterating throught mtf soldiers
tag @a remove mtf_target
tag @a remove on_reticle
#subtick - mtf per soldier
execute as @e[type=wandering_trader,tag=mtf] at @s run function mtf:subtick

#subtick - player
execute as @a at @s run function mtf:subtick_player