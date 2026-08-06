execute at @s run summon armor_stand ~ ~0.5 ~ {Tags:['drop','new'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}

scoreboard players operation @e[tag=new,tag=drop] item_num = max* item_num
scoreboard players add max* item_num 1

$item replace entity @e[tag=new] armor.head from entity @s container.$(dropslot) 

#what item is + SOUNDs
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:card1}] run tag @e[type=armor_stand, tag=new] add card1
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:card2}] run tag @e[type=armor_stand, tag=new] add card2
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:card3}] run tag @e[type=armor_stand, tag=new] add card3
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:card4}] run tag @e[type=armor_stand, tag=new] add card4
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:card5}] run tag @e[type=armor_stand, tag=new] add card5
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:cardomni}] run tag @e[type=armor_stand, tag=new] add cardomni
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:playingcard}] run tag @e[type=armor_stand, tag=new] add playingcard
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:mastercard}] run tag @e[type=armor_stand, tag=new] add mastercard
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:battery9}] run tag @e[type=armor_stand, tag=new] add battery9
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:battery18}] run tag @e[type=armor_stand, tag=new] add battery18
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:killbatteru}] run tag @e[type=armor_stand, tag=new] add killbattery
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:paper}] run tag @e[type=armor_stand, tag=new] add paper
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:note}] run tag @e[type=armor_stand, tag=new] add note
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:yellowpaper}] run tag @e[type=armor_stand, tag=new] add yellowpaper
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:snav}] run tag @e[type=armor_stand, tag=new] add snav
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:eyedrops}] run tag @e[type=armor_stand, tag=new] add eyedrops
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:nvg}] run tag @e[type=armor_stand, tag=new] add nvg
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:nvg_red}] run tag @e[type=armor_stand, tag=new] add nvg_red
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:nvg_blue}] run tag @e[type=armor_stand, tag=new] add nvg_blue
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:gasmask}] run tag @e[type=armor_stand, tag=new] add gasmask
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:super_gasmask}] run tag @e[type=armor_stand, tag=new] add supergasmask
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:vest}] run tag @e[type=armor_stand, tag=new] add vest
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:aidkit0}] run tag @e[type=armor_stand, tag=new] add aidkit0
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:coin}] run tag @e[type=armor_stand, tag=new] add coin
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:scp714}] run tag @e[type=armor_stand, tag=new] add scp714
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:scp420j}] run tag @e[type=armor_stand, tag=new] add scp420j
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:scp500}] run tag @e[type=armor_stand, tag=new] add scp500
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:scp860}] run tag @e[type=armor_stand, tag=new] add scp860
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:scp148}] run tag @e[type=armor_stand, tag=new] add scp148
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:white_arm}] run tag @e[type=armor_stand, tag=new] add white_arm
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:black_arm}] run tag @e[type=armor_stand, tag=new] add black_arm
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:scp1499}] run tag @e[type=armor_stand, tag=new] add scp1499
execute if items entity @n[type=armor_stand, tag=new] armor.head minecraft:paper[custom_data={item:radio}] run tag @e[type=armor_stand, tag=new] add radio

execute if entity @n[type=armor_stand, tag=new,tag=card1] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=card2] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=card3] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=card4] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=card5] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=cardomni] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=playingcard] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=mastercard] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=battery9] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=battery18] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=killbattery] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=paper] at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=note] at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=yellowpaper] at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=snav] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=eyedrops] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=nvg] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=nvg_red] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=nvg_blue] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=gasmask] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=supergasmask] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=vest] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=aidkit0] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=coin] at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=scp714] at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=scp420j] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=scp500] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=scp860] at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=scp148] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=white_arm] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=black_arm] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @n[type=armor_stand, tag=new,tag=scp1499] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1

tag @e remove new

$item replace entity @s container.$(dropslot) with air