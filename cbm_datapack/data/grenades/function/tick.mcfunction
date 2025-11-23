# # execute as @e[type=snowball] at @s run function grenades:temp/tick

# scoreboard players remove @e[scores={grenade_timer=1..},tag=he] grenade_timer 1
# scoreboard players remove @e[scores={incindiery_timer=1..},tag=incindiery] incindiery_timer 1
# scoreboard players remove @e[scores={bounce_sound_cd=1..}] bounce_sound_cd 1
# scoreboard players remove @a[scores={throw_cd=1..}] throw_cd 1
# scoreboard players remove @e[tag=fire_marker] fire_func 1
# scoreboard players remove @e[tag=fire_marker] fire_sound 1
# scoreboard players remove @e[scores={bounce_cd=1..}] bounce_cd 1
# execute as @e[tag=he,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},scores={grenade_right_click=1..,throw_cd=0}] at @s run function grenades:throw
# execute as @e[tag=incindiery,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},scores={grenade_right_click=1..,throw_cd=0}] at @s run function incindiery:throw

# scoreboard players remove @e[tag=grenade,scores={itt_cd=1..}] itt_cd 1

# #Different flying speed/bounces
# execute as @e[tag=grenade,tag=he] at @s positioned ^ ^ ^-1 anchored eyes if block ~ ~-0.25 ~ air if score @s itt_cd matches 0 run function grenades:slow_cast/particle
# execute as @e[tag=grenade,tag=incindiery] at @s positioned ^ ^ ^-1 anchored eyes if block ~ ~-0.25 ~ air if score @s itt_cd matches 0 run function incindiery:slow_cast/particle

# execute as @e[tag=grenade] at @s positioned ^ ^ ^0.65 anchored eyes if score @s bounces matches 0 if score @s itt matches 1.. if score @s itt_cd matches 0 run function grenades:slow_cast/move {"rot":"1.5"}
# execute as @e[tag=grenade] at @s positioned ^ ^ ^0.35 anchored eyes if score @s bounces matches 1 if score @s itt matches 1.. if score @s itt_cd matches 0 run function grenades:slow_cast/move {"rot":"2.5"}
# execute as @e[tag=grenade] at @s positioned ^ ^ ^0.35 anchored eyes if score @s bounces matches 2 if score @s itt matches 1.. if score @s itt_cd matches 0 run function grenades:slow_cast/move {"rot":"4.5"}
# execute as @e[tag=grenade] at @s positioned ^ ^ ^0.35 anchored eyes if score @s bounces matches 3..4 if score @s itt matches 1.. if score @s itt_cd matches 0 run function grenades:slow_cast/move {"rot":"10.5"}

# #hit entity register
# execute as @e[tag=grenade] at @s run execute as @e[type=!marker,type=!armor_stand,type=!block_display,type=!interaction,dx=0] positioned ~-0.69 ~-0.69 ~-0.69 if entity @s[dx=0] positioned ~0.69 ~0.69 ~0.69 as @e[tag=grenade,sort=nearest,limit=1] at @s run function grenades:slow_cast/hit_entity

# #fall
# execute as @e[tag=grenade] at @s if block ~ ~-0.1 ~ air if score @s bounces matches 1.. run tp @s ~ ~-0.1 ~

# #explode grenade
# execute as @e[tag=grenade,tag=he,scores={grenade_timer=0}] at @s run function grenades:slow_cast/explode

# #molotov tick
# execute as @e[tag=grenade,tag=incindiery,scores={incindiery_timer=0}] at @s run function incindiery:slow_cast/explode
# execute as @e[tag=fire_marker] at @s if score @s fire_func matches 0 run function incindiery:slow_cast/tick_fire
# execute as @e[tag=fire_marker] at @s run particle flame ~ ~0.2 ~ 0.75 0.1 0.75 0.01 3 force @a
# execute as @e[tag=fire_marker] if score @s fire = max fire run kill @s
# effect clear @a slowness
# execute as @e[tag=fire_marker] at @s run effect give @a[distance=..1.7] slowness 1 2 true
# execute as @e[tag=fire_marker,limit=1] at @s if score @s fire_sound matches 0 run function incindiery:slow_cast/sound
