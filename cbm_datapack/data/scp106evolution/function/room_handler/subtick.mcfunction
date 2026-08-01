#ambient
execute if score 106 roomsize_shrink matches 0 at @e[tag=pds_roomsize] run function scp106evolution:room_handler/play_ambient

#fall
execute positioned ~ ~-2 ~ as @a[distance=..2.75] at @s run function scp106evolution:room_handler/play_fall

#engulfing players whos too close
# execute as @a[distance=..6] at @s facing entity @n[tag=pds_roomsize] eyes positioned ^ ^0.01 ^0.01 run tp @s ~ ~ ~