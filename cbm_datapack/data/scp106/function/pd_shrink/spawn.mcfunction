summon armor_stand ~ ~ ~ {Tags:['pd_shrink','ps','new','active'],attributes:[{id:"generic.scale",base:0.01f}],NoAI:1b,NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
item replace entity @n[type=armor_stand, tag=new] armor.head with paper[item_model="cb:pd_decal0"]
scoreboard players add @e[type=armor_stand, tag=new] pd_shrink_scale 1
scoreboard players set @e[type=armor_stand, tag=new] step_on_shrink 0

tag @e remove new