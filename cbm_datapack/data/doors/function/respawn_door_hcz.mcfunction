tag @s remove dr.not_rendered

#R0
execute if entity @s[tag=r0] rotated 0 0 run function animated_java:door1/summon with storage aj:temp
#closed-ver
execute if entity @s[tag=r0,tag=closed] run setblock ~-1 ~1 ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r0,tag=closed] run setblock ~-1 ~ ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r0,tag=closed] run setblock ~ ~1 ~ minecraft:lightning_rod[facing=east]
execute if entity @s[tag=r0,tag=closed] run setblock ~ ~ ~ minecraft:lightning_rod[facing=east]

#R1
execute if entity @s[tag=r1] rotated 90 0 run function animated_java:door1/summon with storage aj:temp
#closed-ver
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~1 ~-1 minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~ ~-1 minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~1 ~ minecraft:lightning_rod[facing=north]
execute if entity @s[tag=r1,tag=closed] run setblock ~ ~ ~ minecraft:lightning_rod[facing=north]


#main-opened
tag @s add -commframe
execute if entity @s[tag=opened] as @n[tag=aj.door1.root] at @s run function animated_java:door1/animations/open_close_toggle/play
execute if entity @s[tag=opened] as @n[tag=aj.door1.root] at @s run function animated_java:door1/animations/open_close_toggle/apply_frame {"frame":"25"}
execute if entity @s[tag=opened] as @n[tag=aj.door1.root] at @s run function animated_java:door1/animations/open_close_toggle/pause
tag @s remove -commframe