
summon armor_stand ~ ~ ~ {Tags:['drop','new'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
data modify entity @e[type=armor_stand,sort=nearest,limit=1] ArmorItems[3] set from entity @s Item

scoreboard players operation @e[tag=new,tag=drop] item_num = max* item_num
scoreboard players add max* item_num 1

#what item is
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=1] run tag @e[tag=new] add card1
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=2] run tag @e[tag=new] add card2
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=3] run tag @e[tag=new] add card3
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=4] run tag @e[tag=new] add card4
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=5] run tag @e[tag=new] add card5
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=6] run tag @e[tag=new] add cardomni
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=7] run tag @e[tag=new] add playingcard
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=8] run tag @e[tag=new] add mastercard
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=9] run tag @e[tag=new] add battery9
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=10] run tag @e[tag=new] add battery18
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=11] run tag @e[tag=new] add killbattery
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=12] run tag @e[tag=new] add paper
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=13] run tag @e[tag=new] add note
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=14] run tag @e[tag=new] add yellowpaper
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=15] run tag @e[tag=new] add snav
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=16] run tag @e[tag=new] add eyedrops
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=17] run tag @e[tag=new] add nvg
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=18] run tag @e[tag=new] add nvg_red
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=19] run tag @e[tag=new] add nvg_blue
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=20] run tag @e[tag=new] add gasmask
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=21] run tag @e[tag=new] add vest
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=22] run tag @e[tag=new] add aidkit0
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=23] run tag @e[tag=new] add coin
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=24] run tag @e[tag=new] add scp714
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=25] run tag @e[tag=new] add scp420j
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=26] run tag @e[tag=new] add scp500
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=27] run tag @e[tag=new] add scp860
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=28] run tag @e[tag=new] add scp148
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=29] run tag @e[tag=new] add white_hand
# execute if items entity @n[tag=new] armor.head minecraft:paper[minecraft:custom_model_data=30] run tag @e[tag=new] add black_hand

tag @e remove new
kill @s

