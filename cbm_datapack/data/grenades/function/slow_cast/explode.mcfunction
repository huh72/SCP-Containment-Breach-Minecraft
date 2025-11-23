# particle explosion ~ ~ ~ 0 0 0 0 1 force @a
particle cloud ~ ~0.5 ~ 0 0 0 0.15 35 force @a

playsound cb:grenade.explode ambient @a[distance=..32] ~ ~ ~ 1.1 1 1
playsound cb:grenade.explode_distant ambient @a[distance=33..64] ~ ~ ~ 1.2 1 1

#explosion spot
execute unless block ~ ~-0.25 ~ air run summon armor_stand ~ ~0.05 ~ {Tags:['explosion_spot','new'],NoAI:1b,Marker:1b,NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:paper,components:{custom_model_data:43}}]}
tag @e remove new

kill @s