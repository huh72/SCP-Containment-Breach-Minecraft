#air
execute unless block ~ ~ ~ air run scoreboard players set 999 v 1

#spawn blood
execute unless block ~ ~ ~ air run particle block{block_state:{Name:redstone_block}} ^ ^ ^-0.3 0 0 0 0 10

#spawn armor stand, CASE == angle != 90 and around, watchin sides => ^^^-check
execute unless block ^0.4 ^ ^ air run summon armor_stand ^ ^ ^-0.05 {Tags:['blood_spot','new'],Invisible:1b,Invulnerable:1b,Marker:1b}
execute unless block ^-0.4 ^ ^ air run summon armor_stand ^ ^ ^-0.05 {Tags:['blood_spot','new'],Invisible:1b,Invulnerable:1b,Marker:1b,Rotation:[90f,0f]}
#CASE == angle = 90-around, watchin beyond 
execute unless block ^ ^0.3 ^ air run summon armor_stand ^ ^ ^-0.05 {Tags:['blood_spot','new'],Invisible:1b,Invulnerable:1b,Marker:1b,Rotation:[0f,0f]}

# execute unless block ^ ^0.3 ^ air if score 431 v matches 75..105 run summon armor_stand ^ ^ ^-0.05 {Tags:['blood_spot','new'],Invisible:1b,Invulnerable:1b,Marker:1b,Rotation:[0f,0f]}
# execute unless block ^ ^0.3 ^ air if score 431 v matches 75..105 run say 75..105

execute if entity @n[tag=new] run scoreboard players set 999 v 1
#Rotation:

#Random blood spot
execute store result score 104 v run random value 0..3 cb:blooddrip
# execute if score 104 v matches 0 run item replace entity @n[tag=new] armor.head with flint[custom_model_data=1]
# execute if score 104 v matches 1 run item replace entity @n[tag=new] armor.head with flint[custom_model_data=2]
# execute if score 104 v matches 2 run item replace entity @n[tag=new] armor.head with flint[custom_model_data=3]
# execute if score 104 v matches 3 run item replace entity @n[tag=new] armor.head with flint[custom_model_data=4]

tag @e remove new