#shot sound
playsound cb:p90.shot_in ambient @a[distance=..20] ~ ~ ~ 1.25 1 1
execute as @n[tag=mtf] if entity @s[tag=surface] at @s run playsound cb:p90.shot_out ambient @a[distance=20..64] ~ ~ ~ 1.25 1 1


#???
execute store result storage minecraft:gun_main bullet_num int 1 run scoreboard players get @n[tag=mtf] global_num

#set up damage from p90 stats list to staorge -> bullet spawn func()
execute store result storage minecraft:gun_main damage int 1 run scoreboard players get damage stat_p90
data modify storage minecraft:gun_main blood_lost set value 0
# say 1
#bullet start
execute as @s at @s anchored eyes positioned ~ ~1.75 ~ positioned ^ ^ ^1 run function guns:bullet/spawn with storage minecraft:gun_main

#
# /data modify entity 6f88f8eb-cfa3-44bf-a621-52b3e7d753e7 Pos set from storage game:player Spawn{target:'[{"selector":"@p"}]'}.location