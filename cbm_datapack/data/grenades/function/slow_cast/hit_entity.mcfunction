# kill @s
scoreboard players add @s bounces 1

# execute store result score @s get_rotX run data get entity @s Rotation[0]
execute store result score @s get_rotY run data get entity @s Rotation[1]

###LOG OUTPUT
# tellraw @a [{"text":"INPUT (Rotaion[X]): ","color":"green"},{"score":{"name":"@s","objective":"get_rotX"},"color":"green"}]
# tellraw @a [{"text":"Math 180: "},{"score":{"name":"180","objective":"math"}}]

execute if score @s bounce_sound_cd matches 0 run playsound cb:grenade.bounce ambient @a[distance=..16] ~ ~ ~ 1 1 1
stopsound @a[distance=17..] ambient cb:grenade.bounce
scoreboard players operation @s bounce_sound_cd = max bounce_sound_cd

tp @s ^ ^ ^-0.3 ~180 ~
# tp @s ^ ^ ^1

### BOUNCE LOGIC ###
#const reset
# scoreboard players set 180 math 180
# #math
# scoreboard players operation 180 math -= @s get_rotX
# scoreboard players operation @s get_rotX = 180 math


###LOG OUTPUT
# tellraw @a [{"text":"OUTPUT (BOUNCE ANGLE): ","color":"red"},{"score":{"name":"@s","objective":"get_rotX"},"color":"red"}]

#
# execute store result storage grenade reflectedByY int 1 run scoreboard players get @s get_rotY
# execute as @s at @s anchored eyes if score @s bounce_cd matches 0 run function grenades:slow_cast/bounce with storage minecraft:grenade