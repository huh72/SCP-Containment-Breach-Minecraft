tag @s remove dr.not_rendered


execute if entity @s[tag=black] run scoreboard players set @s scanner_value 1
execute if entity @s[tag=white] run scoreboard players set @s scanner_value 2

scoreboard players set @s door_interact_cd 5

execute unless score @s scanner_value matches 1..2 run tellraw @a [{"text":"[ ! ] ","color":"white"},{"text":"One LCZ scanner door waa not initialized: access_level was not set","color":"red"}]

#R0
execute if entity @s[tag=r0] rotated 0 0 run function animated_java:door0_sc/summon with storage aj:temp
#closed-ver
execute if entity @s[tag=r0,tag=closed] run setblock ~-1 ~1 ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r0,tag=closed] run setblock ~-1 ~ ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r0,tag=closed] run setblock ~ ~1 ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r0,tag=closed] run setblock ~ ~ ~ minecraft:lightning_rod[facing=east]

#R1
execute if entity @s[tag=r1] rotated 90 0 run function animated_java:door0_sc/summon with storage aj:temp
#closed-ver
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~1 ~-1 minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~ ~-1 minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~1 ~ minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~ ~ minecraft:lightning_rod[facing=north]

#main-opened (bruh what is that)
tag @s add -commframe
execute if entity @s[tag=opened] as @n[tag=aj.door0_sc.root] at @s run function animated_java:door0_sc/animations/openclosetoggle/play
execute if entity @s[tag=opened] as @n[tag=aj.door0_sc.root] at @s run function animated_java:door0_sc/animations/openclosetoggle/apply_frame {"frame":"34"}
execute if entity @s[tag=opened] as @n[tag=aj.door0_sc.root] at @s run function animated_java:door0_sc/animations/openclosetoggle/pause
tag @s remove -commframe