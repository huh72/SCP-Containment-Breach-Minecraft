#spawn grenade & sound
summon armor_stand ^ ^ ^1 {Tags:['grenade','incindiery','new'],NoAI:1b,NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:paper,components:{custom_model_data:45}}]}

playsound cb:grenade.throw ambient @a[distance=..16] ~ ~ ~ 2 1 1

#get player rotation
data modify entity @e[tag=new,limit=1] Rotation[0] set from entity @p Rotation[0]
data modify entity @e[tag=new,limit=1] Rotation[1] set from entity @p Rotation[1]

#timer
scoreboard players operation @e[tag=new] incindiery_timer = max incindiery_timer

#bouncde and physics
scoreboard players set @e[tag=new] bounce_cd 0
scoreboard players set @e[tag=new] bounce_sound_cd 0
scoreboard players set @e[tag=new] bounces 0
scoreboard players operation @e[tag=new] itt = max itt
scoreboard players operation @e[tag=new] itt_cd = max itt_cd
execute as @e[tag=grenade] at @s anchored eyes run function incindiery:slow_cast/move {"rot":"1"}
tag @e remove new