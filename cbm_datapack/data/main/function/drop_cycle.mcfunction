scoreboard players remove @s drop_count 1

#random drop
execute store result storage minecraft:drop_pos x int 1 run random value 10..75 cb:drop_pos
execute store result storage minecraft:drop_pos z int 1 run random value 10..75 cb:drop_pos
execute store result score drop pos_neg run random value 0..1 cb:drop_pos

$execute if score drop pos_neg matches 0 run summon armor_stand ~0.$(x) ~1.1 ~0.$(z) {Tags:['drop','new'],Invisible:1b,Silent:1b,Invulnerable:1b}
$execute if score drop pos_neg matches 1 run summon armor_stand ~-0.$(x) ~1.1 ~-0.$(z) {Tags:['drop','new'],Invisible:1b,Silent:1b,Invulnerable:1b}

$execute if score drop pos_neg matches 0 run execute unless block ~0.$(x) ~1.1 ~0.$(z) #drop:air run tp @e[tag=drop,tag=new] @s
$execute if score drop pos_neg matches 1 run execute unless block ~0.$(x) ~1.1 ~0.$(z) #drop:air run tp @e[tag=drop,tag=new] @s

# $say x = .$(x)!
# $say z = .$(z)!
# data modify entity @e[type=armor_stand,sort=nearest,limit=1] ArmorItems[3] set from entity @s Item

scoreboard players operation @n[tag=new,tag=drop] item_num = max* item_num
scoreboard players add max* item_num 1

#copying the item
execute if score @s drop_count matches 0 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.11
execute if score @s drop_count matches 1 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.12
execute if score @s drop_count matches 2 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.13
execute if score @s drop_count matches 3 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.14
execute if score @s drop_count matches 4 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.15

execute if score @s drop_count matches 5 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.20
execute if score @s drop_count matches 6 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.21
execute if score @s drop_count matches 7 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.22
execute if score @s drop_count matches 8 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.23
execute if score @s drop_count matches 9 run item replace entity @n[type=armor_stand, tag=new] armor.head from entity @s container.24

execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"card1"}] run tag @n[type=armor_stand, tag=new] add card1
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"card2"}] run tag @n[type=armor_stand, tag=new] add card2
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"card3"}] run tag @n[type=armor_stand, tag=new] add card3
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"card4"}] run tag @n[type=armor_stand, tag=new] add card4
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"card5"}] run tag @n[type=armor_stand, tag=new] add card5
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"cardomni"}] run tag @n[type=armor_stand, tag=new] add cardomni
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"playingcard"}] run tag @n[type=armor_stand, tag=new] add playingcard
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"mastercard"}] run tag @n[type=armor_stand, tag=new] add mastercard
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"aidkit0"}] run tag @n[type=armor_stand, tag=new] add aidkt0
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"gasmask"}] run tag @n[type=armor_stand, tag=new] add gasmask
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"supergasmask"}] run tag @n[type=armor_stand, tag=new] add supergasmask
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"scp500"}] run tag @n[type=armor_stand, tag=new] add scp500
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"scp714"}] run tag @n[type=armor_stand, tag=new] add scp714
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"scp420j"}] run tag @n[type=armor_stand, tag=new] add scp420j
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"scp860"}] run tag @n[type=armor_stand, tag=new] add scp860
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"vest"}] run tag @n[type=armor_stand, tag=new] add vest
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"scp1499"}] run tag @n[type=armor_stand, tag=new] add scp1499
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"scp148"}] run tag @n[type=armor_stand, tag=new] add scp148
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"nvg"}] run tag @n[type=armor_stand, tag=new] add nvg
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"nvg_blue"}] run tag @n[type=armor_stand, tag=new] add nvg_blue
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"nvg_red"}] run tag @n[type=armor_stand, tag=new] add nvg_red
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"radio"}] run tag @n[type=armor_stand, tag=new] add radio
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"whitearm"}] run tag @n[type=armor_stand, tag=new] add whitearm
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"blackarm"}] run tag @n[type=armor_stand, tag=new] add blackarm
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={item:"coin"}] run tag @n[type=armor_stand, tag=new] add coin
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={battery:9}] run tag @n[type=armor_stand, tag=new] add battery9
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={battery:18}] run tag @n[type=armor_stand, tag=new] add battery18
execute if items entity @n[type=armor_stand, tag=new] armor.head paper[custom_data={battery:kill}] run tag @n[type=armor_stand, tag=new] add killbattery

tag @n[type=armor_stand, tag=new] remove new

execute at @s if score @s drop_count matches 0 run clear @s
execute at @s if score @s drop_count matches 1.. run function main:drop_cycle with storage minecraft:drop_pos