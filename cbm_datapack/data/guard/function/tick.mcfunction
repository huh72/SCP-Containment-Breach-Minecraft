#these tags have be removed here because next game will be iterating throught mtf soldiers
tag @a remove mtf_target_g
tag @a remove on_reticle_g
#subtick - mtf per soldier
execute as @e[type=wandering_trader, tag=guard] at @s run function guard:subtick

#subtick - player
execute as @a at @s run function guard:subtick_player