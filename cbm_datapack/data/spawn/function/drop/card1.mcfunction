summon armor_stand ~ ~ ~ {Tags:['drop','new','card1'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
item replace entity @n[tag=new] armor.head with paper[item_model="cb:card_1"]

execute at @n[tag=new] if entity @s[tag=drop] if entity @e[tag=input,distance=..1.8] run function spawn:drop/case914

tag @e remove new
kill @s[tag=drop]

# scoreboard players operation @e[tag=new,tag=drop] item_num = max* item_num
# scoreboard players add max* item_num 1
