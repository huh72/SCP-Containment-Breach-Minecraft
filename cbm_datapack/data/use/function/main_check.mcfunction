#g aid kit 0
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:aidkit0}] if score @s health < classd health run function use:aidkit0/use
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:aidkit0}] if score @s health >= classd health run function messages:usual {"text":"Nah?"}

#g scp420j
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp420j}] run function use:scp420j/use

#g scp500
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp500}] run function use:scp500/use

#g card level 1
scoreboard players set @s used_a 0
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card1}] if score @s used_a matches 0 unless score @s item_selected matches 1 run function use:card1/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card1}] if score @s used_a matches 0 run function use:card1/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card1}] if score @s used_a matches 0 run function use:card1/end

#g radio
$execute if entity @s[nbt=!{Inventory:[{id:"lightning_rod",Slot:-106b}]},scores={used_a=0}] unless score @s item_selected matches 40 if items entity @s container.$(slot) paper[custom_data={item:radio}] run function use:radio/use
$execute if entity @s[scores={used_a=0}] if items entity @s container.$(slot) paper[custom_data={item:radio}] run function use:radio/end

#g card level 2
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card2}] if score @s used_a matches 0 unless score @s item_selected matches 2 run function use:card2/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card2}] if score @s used_a matches 0 run function use:card2/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card2}] if score @s used_a matches 0 run function use:card2/end

#g card level 3
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card3}] if score @s used_a matches 0 unless score @s item_selected matches 3 run function use:card3/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card3}] if score @s used_a matches 0 run function use:card3/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card3}] if score @s used_a matches 0 run function use:card3/end

#g card level 4
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card4}] if score @s used_a matches 0 unless score @s item_selected matches 4 run function use:card4/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card4}] if score @s used_a matches 0 run function use:card4/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card4}] if score @s used_a matches 0 run function use:card4/end

#g card level 5
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card5}] if score @s used_a matches 0 unless score @s item_selected matches 5 run function use:card5/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card5}] if score @s used_a matches 0 run function use:card5/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card5}] if score @s used_a matches 0 run function use:card5/end

#g card level omni
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card6}] if score @s used_a matches 0 unless score @s item_selected matches 6 run function use:cardomni/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card6}] if score @s used_a matches 0 run function use:cardomni/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:card6}] if score @s used_a matches 0 run function use:cardomni/end

#g playing card
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:playingcard}] if score @s used_a matches 0 unless score @s item_selected matches 7 run function use:playingcard/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:playingcard}] if score @s used_a matches 0 run function use:playingcard/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:playingcard}] if score @s used_a matches 0 run function use:playingcard/end

#g mastercard
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:mastercard}] if score @s used_a matches 0 unless score @s item_selected matches 8 run function use:mastercard/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:mastercard}] if score @s used_a matches 0 run function use:mastercard/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:mastercard}] if score @s used_a matches 0 run function use:mastercard/end

#g battery
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:9}] if score @s used_a matches 0 unless score @s item_selected matches 9 run function use:battery/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:9}] if score @s used_a matches 0 run function use:battery/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:9}] if score @s used_a matches 0 run function use:battery/end

#g battery 19
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:18}] if score @s used_a matches 0 unless score @s item_selected matches 10 run function use:battery18/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:18}] if score @s used_a matches 0 run function use:battery18/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:18}] if score @s used_a matches 0 run function use:battery18/end

#g kill battery
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={battery:kill}] run function use:batterykill/use

#g paper
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:_}] if score @s used_a matches 0 unless score @s item_selected matches 12 run function use:paper/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:lightning_rod",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:_}] if score @s used_a matches 0 run function use:paper/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:lightning_rod",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:_}] if score @s used_a matches 0 run function use:paper/end

#g note
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:note}] if score @s used_a matches 0 unless score @s item_selected matches 13 run function use:note/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:lightning_rod",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:note}] if score @s used_a matches 0 run function use:note/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:lightning_rod",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:note}] if score @s used_a matches 0 run function use:note/end

#g yellow paper
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:yellow}] if score @s used_a matches 0 unless score @s item_selected matches 14 run function use:yellow/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:lightning_rod",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:yellow}] if score @s used_a matches 0 run function use:yellow/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:lightning_rod",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:yellow}] if score @s used_a matches 0 run function use:yellow/end

#g snav
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={paper:snav}] if score @s used_a matches 0 unless score @s item_selected matches 15 run function use:snav/use
$execute if items entity @s[nbt=!{Inventory:[{id:"minecraft:lightning_rod",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:snav}] if score @s used_a matches 0 run function use:snav/use
$execute if items entity @s[nbt={Inventory:[{id:"minecraft:lightning_rod",Slot:-106b}]}] container.$(slot) minecraft:paper[minecraft:custom_data={paper:snav}] if score @s used_a matches 0 run function use:snav/end

#g night vision goggles
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:nvg}] if score @s[tag=!gasmask] used_a matches 0 run function use:nightvisiongoggles/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:nvg}] if score @s[tag=!gasmask] used_a matches 0 run function use:nightvisiongoggles/end

#g gasmask
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:gasmask}] if score @s[tag=!supergasmask] used_a matches 0 run function use:gasmask/denied
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:gasmask}] if score @s[tag=!supergasmask,tag=!nvg] used_a matches 0 run function use:gasmask/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:gasmask}] if score @s[tag=basicgasmask] used_a matches 0 run function use:gasmask/end

#g super gasmask
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:super_gasmask}] if score @s[tag=!basicgasmask] used_a matches 0 run function use:super_gasmask/denied
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:super_gasmask}] if score @s[tag=!basicgasmask,tag=!nvg] used_a matches 0 run function use:super_gasmask/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:super_gasmask}] if score @s[tag=supergasmask] used_a matches 0 run function use:super_gasmask/end

#g vest
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:vest}] if score @s[tag=!vest] used_a matches 0 run function use:vest/use
# $execute unless items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:vest}] if score @s[tag=!vest] used_a matches 0 run function use:vest/use
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:vest}] if score @s[tag=vest] used_a matches 0 run function use:vest/end

#g scp 714
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp714}] if score @s used_a matches 0 run function use:scp714/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp714}] if score @s used_a matches 0 run function use:scp714/end

#g scp 860
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp860}] if score @s used_a matches 0 unless score @s item_selected matches 28 run function use:scp860/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp860}] if score @s used_a matches 0 run function use:scp860/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp860}] if score @s used_a matches 0 run function use:scp860/end

#g scp 148
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp148}] if score @s used_a matches 0 unless score @s item_selected matches 29 run function use:scp148/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp148}] if score @s used_a matches 0 run function use:scp148/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp148}] if score @s used_a matches 0 run function use:scp148/end

#g white arm
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:white_arm}] if score @s used_a matches 0 unless score @s item_selected matches 30 run function use:whitearm/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:white_arm}] if score @s used_a matches 0 run function use:whitearm/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:white_arm}] if score @s used_a matches 0 run function use:whitearm/end

#g black arm
$execute if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:black_arm}] if score @s used_a matches 0 unless score @s item_selected matches 31 run function use:blackarm/use
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:black_arm}] if score @s used_a matches 0 run function use:blackarm/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:black_arm}] if score @s used_a matches 0 run function use:blackarm/end

#g scp1499
$execute unless items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp1499}] if score @s used_a matches 0 run function use:scp1499/use
$execute if items entity @s weapon.offhand minecraft:lightning_rod if items entity @s container.$(slot) minecraft:paper[minecraft:custom_data={item:scp1499}] if score @s used_a matches 0 run function use:scp1499/end











