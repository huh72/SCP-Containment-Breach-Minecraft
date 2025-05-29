#$tellraw @a {"text":"$(dropslot)"}


execute at @s run summon armor_stand ~ ~0.5 ~ {Tags:['drop','new'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
# data modify entity @e[type=armor_stand,sort=nearest,limit=1] ArmorItems[3] set from entity @s Item

scoreboard players operation @e[tag=new,tag=drop] item_num = max* item_num
scoreboard players add max* item_num 1

$item replace entity @e[tag=new] armor.head from entity @s container.$(dropslot) 

#what item is + SOUNDs
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=1] run tag @e[tag=new] add card1
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=2] run tag @e[tag=new] add card2
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=3] run tag @e[tag=new] add card3
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=4] run tag @e[tag=new] add card4
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=5] run tag @e[tag=new] add card5
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=6] run tag @e[tag=new] add cardomni
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=7] run tag @e[tag=new] add playingcard
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=8] run tag @e[tag=new] add mastercard
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=9] run tag @e[tag=new] add battery9
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=10] run tag @e[tag=new] add battery18
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=11] run tag @e[tag=new] add killbattery
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=12] run tag @e[tag=new] add paper
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=13] run tag @e[tag=new] add note
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=14] run tag @e[tag=new] add yellowpaper
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=15] run tag @e[tag=new] add snav
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=16] run tag @e[tag=new] add eyedrop
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=17] run tag @e[tag=new] add nvg
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=18] run tag @e[tag=new] add nvg_red
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=19] run tag @e[tag=new] add nvg_blue
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=20] run tag @e[tag=new] add gasmask
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=21] run tag @e[tag=new] add vest
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=22] run tag @e[tag=new] add aidkit0
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=23] run tag @e[tag=new] add coin
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=24] run tag @e[tag=new] add scp714
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=25] run tag @e[tag=new] add scp420j
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=26] run tag @e[tag=new] add scp500
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=27] run tag @e[tag=new] add scp860
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=28] run tag @e[tag=new] add scp148
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=29] run tag @e[tag=new] add white_hand
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=30] run tag @e[tag=new] add black_hand
execute if items entity @e[tag=new,limit=1] armor.head minecraft:paper[minecraft:custom_model_data=31] run tag @e[tag=new] add scp1499

execute if entity @e[tag=new,tag=card1] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=card2] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=card3] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=card4] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=card5] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=cardomni] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=playingcard] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=mastercard] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=battery9] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=battery18] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=killbattery] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=paper] at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=note] at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=yellowpaper] at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=snav] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=eyedrop] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=nvg] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=nvg_red] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=nvg_blue] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=gasmask] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=vest] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=aidkit0] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=coin] at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=scp714] at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=scp420j] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=scp500] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=scp860] at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=scp148] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=white_hand] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=black_hand] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @e[tag=new,tag=scp1499] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1


tag @e remove new


$item replace entity @s container.$(dropslot) with air