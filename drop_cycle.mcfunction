scoreboard players remove @s drop_count 1

#random drop
execute store result storage minecraft:drop_pos x int 1 run random value 0..9 cb:drop_pos
execute store result storage minecraft:drop_pos z int 1 run random value 0..9 cb:drop_pos
execute store result score drop pos_neg run random value 0..1 cb:drop_pos

$execute if score drop pos_neg matches 0 run summon armor_stand ~0.$(x) ~1.1 ~0.$(z) {Tags:['drop','new'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}
$execute if score drop pos_neg matches 1 run summon armor_stand ~-0.$(x) ~1.1 ~-0.$(z) {Tags:['drop','new'],Invisible:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b}

$execute if score drop pos_neg matches 0 run execute unless block ~0.$(x) ~1.1 ~0.$(z) #drop:air run tp @e[tag=drop,tag=new] @s
$execute if score drop pos_neg matches 1 run execute unless block ~0.$(x) ~1.1 ~0.$(z) #drop:air run tp @e[tag=drop,tag=new] @s

# $say x = .$(x)!
# $say z = .$(z)!
# data modify entity @e[type=armor_stand,sort=nearest,limit=1] ArmorItems[3] set from entity @s Item

scoreboard players operation @e[tag=new,tag=drop] item_num = max* item_num
scoreboard players add max* item_num 1

#copying the item
execute if score @s drop_count matches 1 run item replace entity @e[tag=new] armor.head from entity @s container.11
execute if score @s drop_count matches 2 run item replace entity @e[tag=new] armor.head from entity @s container.12
execute if score @s drop_count matches 3 run item replace entity @e[tag=new] armor.head from entity @s container.13
execute if score @s drop_count matches 4 run item replace entity @e[tag=new] armor.head from entity @s container.14
execute if score @s drop_count matches 5 run item replace entity @e[tag=new] armor.head from entity @s container.15

execute if score @s drop_count matches 6 run item replace entity @e[tag=new] armor.head from entity @s container.20
execute if score @s drop_count matches 7 run item replace entity @e[tag=new] armor.head from entity @s container.21
execute if score @s drop_count matches 8 run item replace entity @e[tag=new] armor.head from entity @s container.22
execute if score @s drop_count matches 9 run item replace entity @e[tag=new] armor.head from entity @s container.23
execute if score @s drop_count matches 10 run item replace entity @e[tag=new] armor.head from entity @s container.24


tag @e[tag=new] remove new

execute at @s if score @s drop_count matches 0 run clear @s
execute at @s if score @s drop_count matches 1.. run function main:drop_cycle with storage minecraft:drop_pos