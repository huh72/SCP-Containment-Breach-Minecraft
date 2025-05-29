# $execute if score $(pos) sq matches 0 run say Position: $(pos) =  0
# $execute unless score $(pos) sq matches 0 run say Position: $(pos) = something!

# particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force

#filler
$execute positioned ~ ~ ~ if score $(pos) sq matches -1 run place template lcz:filler
# $execute if score $(pos) sq matches -1 run scoreboard players add -1 type_count 1

#straight
$execute positioned ~ ~ ~ if score $(pos) sq matches 1 run place template lcz:straight0_1
$execute positioned ~ ~ ~ if score $(pos) sq matches 2 run place template lcz:straight0_2

#markers
$execute if score $(pos) sq matches 1 run summon marker ~ ~ ~ {Tags:['gen','str','1','lcz']}
$execute if score $(pos) sq matches 2 run summon marker ~ ~ ~ {Tags:['gen','str','2','lcz']}

# $execute if score $(pos) sq matches 1 run scoreboard players add 1 type_count 1
# $execute if score $(pos) sq matches 2 run scoreboard players add 1 type_count 1

#corner
$execute positioned ~ ~ ~ if score $(pos) sq matches 6 run place template lcz:corner0_1
$execute positioned ~ ~ ~ if score $(pos) sq matches 5 run place template lcz:corner0_2
$execute positioned ~ ~ ~ if score $(pos) sq matches 4 run place template lcz:corner0_3
$execute positioned ~ ~ ~ if score $(pos) sq matches 3 run place template lcz:corner0_4

#markers
$execute if score $(pos) sq matches 3 run summon marker ~ ~ ~ {Tags:['gen','corner','3','lcz']}
$execute if score $(pos) sq matches 4 run summon marker ~ ~ ~ {Tags:['gen','corner','4','lcz']}
$execute if score $(pos) sq matches 5 run summon marker ~ ~ ~ {Tags:['gen','corner','5','lcz']}
$execute if score $(pos) sq matches 6 run summon marker ~ ~ ~ {Tags:['gen','corner','6','lcz']}


# $execute if score $(pos) sq matches 6 run scoreboard players add 2 type_count 1
# $execute if score $(pos) sq matches 5 run scoreboard players add 2 type_count 1
# $execute if score $(pos) sq matches 4 run scoreboard players add 2 type_count 1
# $execute if score $(pos) sq matches 3 run scoreboard players add 2 type_count 1

#t-formed
$execute positioned ~ ~ ~ if score $(pos) sq matches 10 run place template lcz:t_formed0_1
$execute positioned ~ ~ ~ if score $(pos) sq matches 9 run place template lcz:t_formed0_2
$execute positioned ~ ~ ~ if score $(pos) sq matches 8 run place template lcz:t_formed0_3
$execute positioned ~ ~ ~ if score $(pos) sq matches 7 run place template lcz:t_formed0_4

$execute if score $(pos) sq matches 7 run summon marker ~ ~ ~ {Tags:['gen','t_f','7','lcz']}
$execute if score $(pos) sq matches 8 run summon marker ~ ~ ~ {Tags:['gen','t_f','8','lcz']}
$execute if score $(pos) sq matches 9 run summon marker ~ ~ ~ {Tags:['gen','t_f','9','lcz']}
$execute if score $(pos) sq matches 10 run summon marker ~ ~ ~ {Tags:['gen','t_f','10','lcz']}

# $execute if score $(pos) sq matches 10 run scoreboard players add 3 type_count 1
# $execute if score $(pos) sq matches 9 run scoreboard players add 3 type_count 1
# $execute if score $(pos) sq matches 8 run scoreboard players add 3 type_count 1
# $execute if score $(pos) sq matches 9 run scoreboard players add 3 type_count 1

#x-formed
$execute positioned ~ ~ ~ if score $(pos) sq matches 11 run place template lcz:x_formed0_0

#marker
$execute if score $(pos) sq matches 11 run summon marker ~ ~ ~ {Tags:['gen','x_f','11','lcz']}
# $execute if score $(pos) sq matches 11 run scoreboard players add 4 type_count 1

#lcz checkpoint
$execute positioned ~-7 ~1 ~1 if score $(pos) sq matches 12 run place template lcz:lczcheck

#marker
# $execute if score $(pos) sq matches 12 run summon marker ~ ~ ~ {Tags:['gen','checkpoint','12','lcz']}
# $execute if score $(pos) sq matches 12 run scoreboard players add 5 type_count 1


#deadend
$execute positioned ~1 ~ ~ if score $(pos) sq matches 13 run place template lcz:deadend/106_4
$execute positioned ~ ~ ~ if score $(pos) sq matches 14 run place template lcz:deadend/106_2
$execute positioned ~ ~ ~1 if score $(pos) sq matches 15 run place template lcz:deadend/106_1
$execute positioned ~1 ~ ~1 if score $(pos) sq matches 16 run place template lcz:deadend/106_3

#marker
$execute if score $(pos) sq matches 13 run summon marker ~ ~ ~ {Tags:['gen','dd','13','lcz']}
$execute if score $(pos) sq matches 14 run summon marker ~ ~ ~ {Tags:['gen','dd','14','lcz']}
$execute if score $(pos) sq matches 15 run summon marker ~ ~ ~ {Tags:['gen','dd','15','lcz']}
$execute if score $(pos) sq matches 16 run summon marker ~ ~ ~ {Tags:['gen','dd','16','lcz']}


# deadends
# $execute at @e[tag=gen,tag=dd,tag=lcz,sort=random,limit=1] positioned ~-1 ~ ~1 if score $(pos) sq matches 16 run place template lcz:deadend/914_2
# $execute at @e[tag=gen,tag=dd,tag=lcz,sort=random,limit=1] positioned ~-1 ~ ~1 if score $(pos) sq matches 15 run place template lcz:deadend/914_0
# $execute at @e[tag=gen,tag=dd,tag=lcz,sort=random,limit=1] positioned ~-1 ~ ~1 if score $(pos) sq matches 14 run place template lcz:deadend/914_1
# $execute at @e[tag=gen,tag=dd,tag=lcz,sort=random,limit=1] positioned ~-1 ~ ~1 if score $(pos) sq matches 13 run place template lcz:deadend/914_3


#random выведет случайное число 1..4, и поставит соответстующую комнату на место текущего тупика + скопирует переменную в temp0
#random выведет случайное число 1..4, и если число не равно temp0, поставит соответстующую комнату на место текущего тупика + скопирует переменную в temp1
#...

# $execute if score $(pos) sq matches 13..16 run function generation:get_random_list {"range":"1..4"}



### SCP 914 = 1
### SCP 372 = 2
### archieve = 3
### elev = 4




# $execute if score $(pos) sq matches 13 run scoreboard players add 6 type_count 1
# $execute if score $(pos) sq matches 14 run scoreboard players add 6 type_count 1
# $execute if score $(pos) sq matches 15 run scoreboard players add 6 type_count 1
# $execute if score $(pos) sq matches 16 run scoreboard players add 6 type_count 1

### ROOMS OF INTEREST
# execute if score 6 type_count > 6o type_count if predicate generation:20 run say 1