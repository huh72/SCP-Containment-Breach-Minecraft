scoreboard players remove @e[type=marker,tag=door,scores={door_interact_cd=1..}] door_interact_cd 1
scoreboard players remove @a[scores={card_interact_cd=1..}] card_interact_cd 1
scoreboard players remove @e[type=marker,tag=door_marker_checkpoint,tag=opened,scores={door_checkpoint_timer=1..}] door_checkpoint_timer 1

#door interact possible check
execute as @a[tag=!dead] at @s run function doors:handlers/door_interact_detect


#door interact main handler
execute as @a[tag=close_to_door] at @s run function doors:handlers/lcz
execute as @a[tag=close_to_door_hcz] at @s run function doors:handlers/hcz

#checkpoint auto-close
execute as @e[type=marker,tag=checkpoint,tag=opened] at @s if score @s door_checkpoint_timer = alarm door_checkpoint_timer run playsound cb:door.locksiren ambient @a ~ ~1 ~ 1 1 1
execute as @e[type=marker,tag=checkpoint,tag=opened] at @s if score @s door_checkpoint_timer matches 0 as @n[type=item_display,tag=aj.door_check0.root] run function animated_java:door_check0/animations/openclosetoggle/resume

#reset player's right click
scoreboard players set @a door_right_click 0