tp @a @n[tag=firstLocation]
#playsound introduction theme here...

#spawn info paper for no reason
execute as @n[tag=paperSpawnPos] at @s run summon armor_stand ~ ~ ~ {Tags:['drop','new','pickupevent0'],Invisible:1b,Silent:1b,Marker:1b,Invulnerable:1b}
execute as @n[tag=paperSpawnPos] at @s run item replace entity @n[tag=drop,tag=new] armor.head with paper[item_model="cb:paper"]
tag @e remove new