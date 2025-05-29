# particle explosion ~ ~ ~ 0 0 0 0 1 force @a
# particle cloud ~ ~0.5 ~ 0 0 0 0.85 155 force @a

summon marker ~1.2 ~ ~1.2 {Tags:['new','fire_marker']}
summon marker ~1.2 ~ ~-1.2 {Tags:['new','fire_marker']}
summon marker ~-1.2 ~ ~1.2 {Tags:['new','fire_marker']}
summon marker ~-1.2 ~ ~-1.2 {Tags:['new','fire_marker']}

execute at @s if block ~ ~-0.6 ~ air run particle flame ~ ~ ~ 0.1 0.1 0.1 0.125 40 force
execute at @s if block ~ ~-0.6 ~ air run scoreboard players remove @a[distance=..3] health 1

execute as @e[tag=new] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=new] at @s if block ~ ~-0.6 ~ air run kill @s
scoreboard players set @e[tag=new] fire 0
scoreboard players set @e[tag=new] fire_func 40
scoreboard players set @e[tag=new] fire_sound 20



# playsound cb:grenade.explode ambient @a[distance=..32] ~ ~ ~ 1.1 1 1
# playsound cb:grenade.explode_distant ambient @a[distance=33..64] ~ ~ ~ 1.2 1 1

#explosion spot
# execute unless block ~ ~-0.25 ~ air run summon armor_stand ~ ~0.05 ~ {Tags:['explosion_spot','new'],NoAI:1b,Marker:1b,NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:paper,components:{custom_model_data:43}}]}
tag @e remove new

kill @s