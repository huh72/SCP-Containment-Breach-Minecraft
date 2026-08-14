summon armor_stand ~ ~ ~ {Tags:['pd_shrink','pds','new','active','elevatorTarget'],attributes:[{id:"scale",base:0.09f}],NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
item replace entity @n[type=armor_stand, tag=new] armor.head with paper[item_model="cb:pd_decal0"]

execute store result storage cb:pds rotation int 1 run random value 1..360 cb:pds_rotation
execute as @n[type=armor_stand,tag=pds] at @s run function scp106:pd_shrink/rotate with storage cb:pds

scoreboard players add @e[type=armor_stand, tag=new] pd_shrink_scale 10
scoreboard players set @e[type=armor_stand, tag=new] step_on_shrink 0
scoreboard players operation @e[type=armor_stand, tag=new] step_on_shrink_cd = max step_on_shrink_cd

execute as @e[type=armor_stand,tag=new] at @s run function scp106:pd_shrink/appear

#reset other shrinks
scoreboard players operation @e[tag=pds] step_on_shrink_cd = max step_on_shrink_cd
scoreboard players set @e[tag=pds] step_on_shrink 0

tag @e remove new