#visuals
damage @s 0.0001 cactus
execute positioned ^ ^ ^-0.5 run particle crit ~ ~ ~ 0 0 0 0 1 force @a

# say HIT REGESTER! + @s
#blood --> blood' func
# data modify storage gun_main blood_x0 set from entity @n[tag=bullet] Rotation[0]
# data modify storage gun_main blood_y0 set from entity @n[tag=bullet] Rotation[1]

execute as @n[tag=bullet] at @s anchored eyes run function guns:bullet/blood/spawn

#types of hit
#head
execute if entity @s[distance=1.7..] run function guns:bullet/player_hit/head
#body : main => another func(): right\left
execute if entity @s[distance=1..1.7] run function guns:bullet/player_hit/body
#legs: main => another func(): right\left
execute if entity @s[distance=..1] run function guns:bullet/player_hit/legs

#damaging
scoreboard players operation @s[tag=gun_damage_target] health -= @n[tag=bullet] damage


#end --> despawn phys bullet
execute as @n[tag=bullet] run function guns:bullet/despawn