#g 33% -> hit to the head
execute if predicate ci:head_hit_chance run scoreboard players set _temp.hit? ci 2

#g apply minecraft vanila damage
damage @s 0.0001 cactus

#g particles
execute at @s facing entity @n[type=wandering_trader, tag=cis, tag=detected_enemy] eyes positioned ~ ~1.65 ~ run particle crit ^ ^ ^0.65 0 0 0 0.15 5 force @a
execute at @s run playsound cb:gun.hit ambient @a[distance=..10] ~ ~ ~ 1 1 1

execute at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0 0 0 0 2
execute if score _temp.hit? ci matches 2 at @s run particle block{block_state:{Name:redstone_block}} ~ ~2 ~ 0 0 0 0 4

#g apply damage
scoreboard players operation _temp_ci damage = damage stat_hkg36

execute if score _temp.hit? ci matches 2 run scoreboard players operation _temp_ci damage *= 3 math
scoreboard players operation @s health -= _temp_ci damage

execute if score @s health matches ..0 as @n[tag=detected_enemy] at @s if entity @s[tag=ini] run playsound cb:ci.cdkill ambient @a[distance=..24] ~ ~1.75 ~ 3 1 1
execute if score @s health matches ..0 run tag @s add d_ci