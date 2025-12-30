# Psssst! 'hit' tag means ~ vulnerable to bullet damage

# bullet's movement 
tp @s ^ ^ ^4

#target (tag=hit) hit detection
execute positioned ^ ^ ^ unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester
execute positioned ^ ^ ^1 unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester
execute positioned ^ ^ ^2 unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester
execute positioned ^ ^ ^3 unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester
execute positioned ^ ^ ^4 unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester

#block hit
execute unless block ^ ^ ^ #raycast:air run kill @s
execute unless block ^ ^ ^1 #raycast:air run kill @s
execute unless block ^ ^ ^2 #raycast:air run kill @s
execute unless block ^ ^ ^3 #raycast:air run kill @s
execute unless block ^ ^ ^4 #raycast:air run kill @s


#particles
execute positioned ^-0.5 ^-0.325 ^2 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]
execute positioned ^-0.5 ^-0.325 ^3 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]
execute positioned ^-0.5 ^-0.325 ^4 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]
execute positioned ^-0.5 ^-0.325 ^5 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]
execute positioned ^-0.5 ^-0.325 ^6 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]

#particial
execute positioned ^ ^ ^ as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial
execute positioned ^ ^ ^1 as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial
execute positioned ^ ^ ^2 as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial
execute positioned ^ ^ ^3 as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial
execute positioned ^ ^ ^4 as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial

#out of timer => despawn
#timer
scoreboard players remove @s[tag=bullet] bullet_live_time 1

# despawn
execute if score @s bullet_live_time matches ..0 run function guns:bullet/despawn