#subtick - @s
execute as @e[type=wandering_trader,tag=mtf] at @s run function mtf:subtick

#subtick - player
execute as @a[tag=!dead] at @s run function mtf:subtick_player