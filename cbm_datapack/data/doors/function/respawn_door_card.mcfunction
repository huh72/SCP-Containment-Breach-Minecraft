tag @s remove dr.not_rendered

#R0
execute if entity @s[tag=r0] rotated 0 0 run function animated_java:door_card0/summon with storage aj:temp
#closed-ver
execute if entity @s[tag=r0,tag=closed] run setblock ~-1 ~1 ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r0,tag=closed] run setblock ~-1 ~ ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r0,tag=closed] run setblock ~ ~1 ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r0,tag=closed] run setblock ~ ~ ~ minecraft:lightning_rod[facing=east]

#R1
execute if entity @s[tag=r1] rotated 90 0 run function animated_java:door_card0/summon with storage aj:temp
#closed-ver
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~1 ~-1 minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~ ~-1 minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~1 ~ minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~ ~ minecraft:lightning_rod[facing=north]


scoreboard players set @s door_interact_cd 0
scoreboard players set @s card_interact_cd 0
scoreboard players set @s[tag=lvl0] access_level 0
scoreboard players set @s[tag=lvl1] access_level 1
scoreboard players set @s[tag=lvl2] access_level 2
scoreboard players set @s[tag=lvl3] access_level 3
scoreboard players set @s[tag=lvl4] access_level 4
scoreboard players set @s[tag=lvl5] access_level 5

#main-opened
tag @s add -commframe
execute if entity @s[tag=opened] as @n[tag=aj.door_card0.root] at @s run function animated_java:door_card0/animations/openclosetoggle/play
execute if entity @s[tag=opened] as @n[tag=aj.door_card0.root] at @s run function animated_java:door_card0/animations/openclosetoggle/apply_frame {"frame":"34"}
execute if entity @s[tag=opened] as @n[tag=aj.door_card0.root] at @s run function animated_java:door_card0/animations/openclosetoggle/pause
tag @s remove -commframe