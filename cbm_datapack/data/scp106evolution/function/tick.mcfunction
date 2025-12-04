# spawn -> first 30 seconds - active chasing, next - passive chasing
#active chasing - tries to kill every one in facility,if no players in 48 blocks radius - disappear and appear near most low-hp player, priority - low-hp player
#passive chasing - if no players in 64 blocks radius - dissapear, if makes kill - disappear, if made kill during active phase - dissapear, after +90 seconds - dissapear

#chasing in general:
#106 looks at player direction, per tick - RotY = 0
#
#

#well...



execute as @n[type=marker,tag=106origin] at @s run function scp106evolution:subtick




# execute as @e[type=minecraft:armor_stand,tag=ps] at @s store result storage minecraft:pd_shrink scale int 1 run scoreboard players get @s pd_shrink_scale
# execute as @e[type=minecraft:armor_stand,tag=ps] at @s if score @s pd_shrink_scale < max pd_shrink_scale run function scp106:pd_shrink/resize with storage minecraft:pd_shrink
