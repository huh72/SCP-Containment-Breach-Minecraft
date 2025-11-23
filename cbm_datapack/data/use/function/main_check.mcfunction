#aid kit 0
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:aidkit0}] if score @s health < class_d* health run function use:aidkit0/use
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:aidkit0}] if score @s health >= class_d* health run function messages:usual {"text":"Nah?"}

#scp420j
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp420j}] run function use:scp420j/use

#scp500
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp500}] run function use:scp500/use

# card level 1
scoreboard players set @s used_a 0
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={card:1}] if score @s used_a matches 0 unless score @s item_selected matches 1 run function use:card1/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:1}] if score @s used_a matches 0 run function use:card1/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:1}] if score @s used_a matches 0 run function use:card1/end

#radio
$execute if entity @s[nbt=!{Inventory:[{id:"acacia_boat",Slot:-106b}]},scores={used_a=0}] unless score @s item_selected matches 40 if items entity @s container.$(slot) paper[custom_data={item:radio}] run function use:radio/use
$execute if entity @s[scores={used_a=0}] if items entity @s container.$(slot) paper[custom_data={item:radio}] run function use:radio/end

# card level 2
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={card:2}] if score @s used_a matches 0 unless score @s item_selected matches 2 run function use:card2/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:2}] if score @s used_a matches 0 run function use:card2/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:2}] if score @s used_a matches 0 run function use:card2/end

# card level 3
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={card:3}] if score @s used_a matches 0 unless score @s item_selected matches 3 run function use:card3/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:3}] if score @s used_a matches 0 run function use:card3/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:3}] if score @s used_a matches 0 run function use:card3/end

# card level 4
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={card:4}] if score @s used_a matches 0 unless score @s item_selected matches 4 run function use:card4/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:4}] if score @s used_a matches 0 run function use:card4/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:4}] if score @s used_a matches 0 run function use:card4/end

# card level 5
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={card:5}] if score @s used_a matches 0 unless score @s item_selected matches 5 run function use:card5/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:5}] if score @s used_a matches 0 run function use:card5/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:5}] if score @s used_a matches 0 run function use:card5/end

# card level omni
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={card:6}] if score @s used_a matches 0 unless score @s item_selected matches 6 run function use:cardomni/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:6}] if score @s used_a matches 0 run function use:cardomni/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:6}] if score @s used_a matches 0 run function use:cardomni/end

# playing card
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={card:playing}] if score @s used_a matches 0 unless score @s item_selected matches 7 run function use:playingcard/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:playing}] if score @s used_a matches 0 run function use:playingcard/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:playing}] if score @s used_a matches 0 run function use:playingcard/end

# mastercard
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={card:master}] if score @s used_a matches 0 unless score @s item_selected matches 8 run function use:mastercard/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:master}] if score @s used_a matches 0 run function use:mastercard/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={card:master}] if score @s used_a matches 0 run function use:mastercard/end

# battery
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:9}] if score @s used_a matches 0 unless score @s item_selected matches 9 run function use:battery/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={battery:9}] if score @s used_a matches 0 run function use:battery/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={battery:9}] if score @s used_a matches 0 run function use:battery/end

# battery 19
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:18}] if score @s used_a matches 0 unless score @s item_selected matches 10 run function use:battery18/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={battery:18}] if score @s used_a matches 0 run function use:battery18/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={battery:18}] if score @s used_a matches 0 run function use:battery18/end

# kill battery
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:kill}] if score @s used_a matches 0 unless score @s item_selected matches 11 run function use:batterykill/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={battery:kill}] if score @s used_a matches 0 run function use:batterykill/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={battery:kill}] if score @s used_a matches 0 run function use:batterykill/end

# paper
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:_}] if score @s used_a matches 0 unless score @s item_selected matches 12 run function use:paper/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:_}] if score @s used_a matches 0 run function use:paper/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:_}] if score @s used_a matches 0 run function use:paper/end

# note
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:note}] if score @s used_a matches 0 unless score @s item_selected matches 13 run function use:note/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:note}] if score @s used_a matches 0 run function use:note/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:note}] if score @s used_a matches 0 run function use:note/end

# yellow paper
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:yellow}] if score @s used_a matches 0 unless score @s item_selected matches 14 run function use:yellow/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:yellow}] if score @s used_a matches 0 run function use:yellow/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:yellow}] if score @s used_a matches 0 run function use:yellow/end

# snav
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:snav}] if score @s used_a matches 0 unless score @s item_selected matches 15 run function use:snav/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:snav}] if score @s used_a matches 0 run function use:snav/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:snav}] if score @s used_a matches 0 run function use:snav/end

# night vision goggles
# $execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:snav}] if score @s used_a matches 0 unless score @s item_selected matches 17 run function use:nightvisiongoggles/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:nvg}] if score @s used_a matches 0 run function use:nightvisiongoggles/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:nvg}] if score @s used_a matches 0 run function use:nightvisiongoggles/end

# gasmask
# $execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:gasmask}] if score @s used_a matches 0 unless score @s item_selected matches 20 run function use:gasmask/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:gasmask}] if score @s used_a matches 0 run function use:gasmask/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:gasmask}] if score @s used_a matches 0 run function use:gasmask/end

# super gasmask
# $execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:gasmask}] if score @s used_a matches 0 unless score @s item_selected matches 20 run function use:gasmask/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:super_gasmask}] if score @s used_a matches 0 run function use:super_gasmask/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:super_gasmask}] if score @s used_a matches 0 run function use:super_gasmask/end

# vest
# $execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:gasmask}] if score @s used_a matches 0 unless score @s item_selected matches 20 run function use:gasmask/use
# $execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:super_gasmask}] if score @s used_a matches 0 run function use:super_gasmask/use
# $execute if items entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:super_gasmask}] if score @s used_a matches 0 run function use:super_gasmask/end

# vest
# $execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:vest}] if score @s used_a matches 0 unless score @s item_selected matches 21 run function use:coin/use
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:vest}] if score @s used_a matches 0 run function use:vest/diswear
# $execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:vest}] if score @s used_a matches 0 run function use:vest/end

# gasmask
# $execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:gasmask}] if score @s used_a matches 0 unless score @s item_selected matches 20 run function use:gasmask/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp714}] if score @s used_a matches 0 run function use:scp714/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp714}] if score @s used_a matches 0 run function use:scp714/end

# scp 860
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp860}] if score @s used_a matches 0 unless score @s item_selected matches 27 run function use:scp860/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp860}] if score @s used_a matches 0 run function use:scp860/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp860}] if score @s used_a matches 0 run function use:scp860/end

# scp 148
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp148}] if score @s used_a matches 0 unless score @s item_selected matches 28 run function use:scp148/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp148}] if score @s used_a matches 0 run function use:scp148/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp148}] if score @s used_a matches 0 run function use:scp148/end

# white arm
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:whitearm}] if score @s used_a matches 0 unless score @s item_selected matches 29 run function use:whitearm/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:whitearm}] if score @s used_a matches 0 run function use:whitearm/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:whitearm}] if score @s used_a matches 0 run function use:whitearm/end

# white arm
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:blackarm}] if score @s used_a matches 0 unless score @s item_selected matches 30 run function use:blackarm/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:blackarm}] if score @s used_a matches 0 run function use:blackarm/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:acacia_boat",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:blackarm}] if score @s used_a matches 0 run function use:blackarm/end

# scp1499
# $execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:gasmask}] if score @s used_a matches 0 unless score @s item_selected matches 20 run function use:gasmask/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp1499}] if score @s used_a matches 0 run function use:scp1499/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:scp1499}] if score @s used_a matches 0 run function use:scp1499/end











