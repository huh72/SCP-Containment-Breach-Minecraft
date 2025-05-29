# bullet' movement 
tp @s ^ ^ ^4

#particial
# execute as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial

# tellraw @a [{"text":"@__S: "},{"score":{"name":"@s","objective":"global_num"}}]
# execute positioned ^ ^ ^ positioned ^-0.7 ^ ^-0.7 run tellraw @a [{"text":"@e[dx]: "},{"score":{"name":"@e[type=player,dx=0,limit=1]","objective":"global_num"}}]
# execute positioned ^ ^ ^1 positioned ^-0.7 ^ ^-0.7 run tellraw @a [{"text":"@e[dx]: "},{"score":{"name":"@e[type=player,dx=0,limit=1]","objective":"global_num"}}]
# execute positioned ^ ^ ^2 positioned ^-0.7 ^ ^-0.7 run tellraw @a [{"text":"@e[dx]: "},{"score":{"name":"@e[type=player,dx=0,limit=1]","objective":"global_num"}}]
# execute positioned ^ ^ ^3 positioned ^-0.7 ^ ^-0.7 run tellraw @a [{"text":"@e[dx]: "},{"score":{"name":"@e[type=player,dx=0,limit=1]","objective":"global_num"}}]
# execute positioned ^ ^ ^4 positioned ^-0.7 ^ ^-0.7 run tellraw @a [{"text":"@e[dx]: "},{"score":{"name":"@e[type=player,dx=0,limit=1]","objective":"global_num"}}]

execute positioned ^ ^ ^ unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester
execute positioned ^ ^ ^1 unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester
execute positioned ^ ^ ^2 unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester
execute positioned ^ ^ ^3 unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester
execute positioned ^ ^ ^4 unless score @s global_num = @n[tag=hit] global_num positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run function guns:bullet/hit_regester

# execute if entity @p[distance=..1] run say 11

execute positioned ^-0.5 ^-0.325 ^2 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]
execute positioned ^-0.5 ^-0.325 ^3 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]
execute positioned ^-0.5 ^-0.325 ^4 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]
execute positioned ^-0.5 ^-0.325 ^5 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]
execute positioned ^-0.5 ^-0.325 ^6 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a[tag=particles_enabled]



execute positioned ^ ^ ^ as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial
execute positioned ^ ^ ^1 as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial
execute positioned ^ ^ ^2 as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial
execute positioned ^ ^ ^3 as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial
execute positioned ^ ^ ^4 as @s at @s if block ~ ~ ~ #raycast:partial run function guns:bullet/particial/partial


#hit regester
# execute unless block ~ ~ ~ #raycast:air run function guns:bullet/hit
execute positioned ^ ^ ^ unless block ~ ~ ~ #raycast:air run function guns:bullet/hit
execute positioned ^ ^ ^1 unless block ~ ~ ~ #raycast:air run function guns:bullet/hit
execute positioned ^ ^ ^2 unless block ~ ~ ~ #raycast:air run function guns:bullet/hit
execute positioned ^ ^ ^3 unless block ~ ~ ~ #raycast:air run function guns:bullet/hit
execute positioned ^ ^ ^4 unless block ~ ~ ~ #raycast:air run function guns:bullet/hit


#out of timer => despawn
#timer
scoreboard players remove @s[tag=bullet] bullet_live_time 1

#HIT Regester
# execute as @e[type=player,dx=0] positioned ~-0.69 ~-0.69 ~-0.69 if entity @s[dx=0] positioned ~0.69 ~0.69 ~0.69 run function guns:bullet/hit_regester

# despawn
execute if score @s bullet_live_time matches ..0 run function guns:bullet/despawn
# say @s
# say @p


# tellraw @a {"score":{"name":"@s","objective":"bullet_live_time"}}