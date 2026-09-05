#scp106 handler:
execute as @n[type=marker,tag=106origin] at @s run function scp106:subtick

#pocket dimension shrink handler:
execute as @e[type=armor_stand,tag=pds] at @s run function scp106:pd_shrink/subtick

# #pocket dimension shrink wall variant handler:
# execute as @e[type=armor_stand,tag=pds_wall] at @s run function scp106:pd_shrink_wall/subtick

scoreboard players remove 106 roomsize_shrink 1
execute as @e[type=item_display,tag=pds_roomsize] at @s run function scp106:room_handler/subtick

#g pocket dimension handler:
execute as @n[type=marker,tag=pd.center] at @s run function scp106:pd/handler
#g fall in handler:
execute as @a[tag=hitby106] at @s unless score @s fallinpdanimation matches -1 if score @s fallinpdanimation < max fallinpdanimation run function scp106:hit/fallanimation