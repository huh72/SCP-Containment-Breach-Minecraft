scoreboard players operation @s bleeding_damage_cd = max* bleeding_damage_cd

execute if score @s bleeding matches 1 run scoreboard players operation @s health -= level1* b_damage
execute if score @s bleeding matches 2 run scoreboard players operation @s health -= level2* b_damage
execute if score @s bleeding matches 3 run scoreboard players operation @s health -= level3* b_damage
execute if score @s bleeding matches 4 run scoreboard players operation @s health -= level4* b_damage
execute if score @s bleeding matches 5 run scoreboard players operation @s health -= level5* b_damage
execute if score @s bleeding matches 6 run scoreboard players operation @s health -= level6* b_damage
execute if score @s bleeding matches 7 run scoreboard players operation @s health -= level7* b_damage
execute if score @s bleeding matches 8 run scoreboard players operation @s health -= level8* b_damage
execute if score @s bleeding matches 9 run scoreboard players operation @s health -= level9* b_damage
execute if score @s bleeding matches 10 run scoreboard players operation @s health -= level10* b_damage

execute store result score _* blooddrip run random roll 0..3 cb:blooddrip

execute if score _* blooddrip matches 0 if score @s bleeding matches 1..2 run summon armor_stand ~ ~0.01 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1f}]}
execute if score _* blooddrip matches 1 if score @s bleeding matches 1..2 run summon armor_stand ~ ~0.02 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[90f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1f}]}
execute if score _* blooddrip matches 2 if score @s bleeding matches 1..2 run summon armor_stand ~ ~0.03 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[180f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1f}]}
execute if score _* blooddrip matches 3 if score @s bleeding matches 1..2 run summon armor_stand ~ ~ ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[270f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1f}]}

execute if score _* blooddrip matches 0 if score @s bleeding matches 3..4 run summon armor_stand ~ ~0.01 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.2f}]}
execute if score _* blooddrip matches 1 if score @s bleeding matches 3..4 run summon armor_stand ~ ~0.02 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[90f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.2f}]}
execute if score _* blooddrip matches 2 if score @s bleeding matches 3..4 run summon armor_stand ~ ~0.03 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[180f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.2f}]}
execute if score _* blooddrip matches 3 if score @s bleeding matches 3..4 run summon armor_stand ~ ~ ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[270f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.2f}]}

execute if score _* blooddrip matches 0 if score @s bleeding matches 5..7 run summon armor_stand ~ ~0.01 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.4f}]}
execute if score _* blooddrip matches 1 if score @s bleeding matches 5..7 run summon armor_stand ~ ~0.02 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[90f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.4f}]}
execute if score _* blooddrip matches 2 if score @s bleeding matches 5..7 run summon armor_stand ~ ~0.03 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[180f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.4f}]}
execute if score _* blooddrip matches 3 if score @s bleeding matches 5..7 run summon armor_stand ~ ~ ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[270f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.4f}]}

execute if score _* blooddrip matches 0 if score @s bleeding matches 8..10 run summon armor_stand ~ ~0.01 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.6f}]}
execute if score _* blooddrip matches 1 if score @s bleeding matches 8..10 run summon armor_stand ~ ~0.02 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[90f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.6f}]}
execute if score _* blooddrip matches 2 if score @s bleeding matches 8..10 run summon armor_stand ~ ~0.03 ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[180f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.6f}]}
execute if score _* blooddrip matches 3 if score @s bleeding matches 8..10 run summon armor_stand ~ ~ ~ {Tags:['blooddrip','new'],Invisible:1b,Invulnerable:1b,Silent:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:redstone,components:{custom_model_data:1},count:1}],Rotation:[270f,0f],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.scale",base:1.6f}]}

tag @e remove new

playsound cb:d9341.blooddrip ambient @a[distance=..5] ~ ~ ~ 0.85 1 1