execute store result score @s[scores={bleeding=1..6}] blooddrip_cd run random value 35..55 cb:blooddripcd
execute store result score @s[scores={bleeding=7..10}] blooddrip_cd run random value 20..35 cb:blooddripcd

# blood drip
#entity
execute store result score rotation blooddrip run random value 0..3 cb:blooddriprotation

execute if score rotation blooddrip matches 0 run summon armor_stand ~ ~ ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,attributes:[{id:"scale",base:1f}],Rotation:[0f,0f]}
execute if score rotation blooddrip matches 1 run summon armor_stand ~ ~0.03 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,attributes:[{id:"scale",base:1f}],Rotation:[90f,0f]}
execute if score rotation blooddrip matches 2 run summon armor_stand ~ ~0.06 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,attributes:[{id:"scale",base:1f}],Rotation:[180f,0f]}
execute if score rotation blooddrip matches 3 run summon armor_stand ~ ~0.09 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,attributes:[{id:"scale",base:1f}],Rotation:[270f,0f]}


scoreboard players operation @n[tag=new] blooddrip = livetime blooddrip

#sound
playsound cb:d9341.blooddrip ambient @a[distance=..8] ~ ~ ~ 1 1 1



#blooddrip scale
# execute store result score size blooddrip run random roll 

#replace entity's model
item replace entity @n[tag=new] armor.head with paper[item_model="cb:blooddrip0"]

execute if score @s bleeding matches 1 run attribute @n[tag=new] scale base set 1
execute if score @s bleeding matches 2 run attribute @n[tag=new] scale base set 1.15
execute if score @s bleeding matches 3 run attribute @n[tag=new] scale base set 1.3
execute if score @s bleeding matches 4 run attribute @n[tag=new] scale base set 1.45
execute if score @s bleeding matches 5 run attribute @n[tag=new] scale base set 1.6
execute if score @s bleeding matches 6 run attribute @n[tag=new] scale base set 1.8


execute if score @s bleeding matches 7..10 run item replace entity @n[tag=new] armor.head with paper[item_model="cb:blooddrip1"]

execute if score @s bleeding matches 7..8 run attribute @n[tag=new] scale base set 2
execute if score @s bleeding matches 9 run attribute @n[tag=new] scale base set 2.25
execute if score @s bleeding matches 10 run attribute @n[tag=new] scale base set 2.5

#tag
tag @e remove new