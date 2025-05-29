# $execute if score $(pos) hsq matches 0 run say Position: $(pos) =  0
# $execute unless score $(pos) hsq matches 0 run say Position: $(pos) = something!

# particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force

# #filler
# $execute positioned ~ ~ ~ if score $(pos) hsq matches -1 run place template lcz:filler
# # $execute if score $(pos) hsq matches -1 run scoreboard players add -1 type_count 1

# #straight
$execute positioned ~ ~1 ~6 if score $(pos) hsq matches 1 run place template hcz:str0_0
$execute positioned ~6 ~1 ~ if score $(pos) hsq matches 2 run place template hcz:str0_1

#markers
$execute if score $(pos) hsq matches 1 run summon marker ~ ~ ~ {Tags:['gen','str','1','hcz']}
$execute if score $(pos) hsq matches 2 run summon marker ~ ~ ~ {Tags:['gen','str','2','hcz']}

# # $execute if score $(pos) hsq matches 1 run scoreboard players add 1 type_count 1
# # $execute if score $(pos) hsq matches 2 run scoreboard players add 1 type_count 1

#corner
$execute positioned ~ ~1 ~6 if score $(pos) hsq matches 6 run place template hcz:corner0_2
$execute positioned ~ ~1 ~ if score $(pos) hsq matches 5 run place template hcz:corner0_3
$execute positioned ~6 ~1 ~6 if score $(pos) hsq matches 4 run place template hcz:corner0_1
$execute positioned ~6 ~1 ~ if score $(pos) hsq matches 3 run place template hcz:corner0_0

#markers
$execute if score $(pos) hsq matches 3 run summon marker ~ ~ ~ {Tags:['gen','corner','3','hcz']}
$execute if score $(pos) hsq matches 4 run summon marker ~ ~ ~ {Tags:['gen','corner','4','hcz']}
$execute if score $(pos) hsq matches 5 run summon marker ~ ~ ~ {Tags:['gen','corner','5','hcz']}
$execute if score $(pos) hsq matches 6 run summon marker ~ ~ ~ {Tags:['gen','corner','6','hcz']}


# # $execute if score $(pos) hsq matches 6 run scoreboard players add 2 type_count 1
# # $execute if score $(pos) hsq matches 5 run scoreboard players add 2 type_count 1
# # $execute if score $(pos) hsq matches 4 run scoreboard players add 2 type_count 1
# # $execute if score $(pos) hsq matches 3 run scoreboard players add 2 type_count 1

#t-formed
$execute positioned ~ ~ ~ if score $(pos) hsq matches 10 run place template hcz:t_formed0_1
$execute positioned ~5 ~ ~ if score $(pos) hsq matches 9 run place template hcz:t_formed0_2
$execute positioned ~ ~ ~5 if score $(pos) hsq matches 8 run place template hcz:t_formed0_3
$execute positioned ~ ~ ~ if score $(pos) hsq matches 7 run place template hcz:t_formed0_0

$execute if score $(pos) hsq matches 7 run summon marker ~ ~ ~ {Tags:['gen','t_f','7','hcz']}
$execute if score $(pos) hsq matches 8 run summon marker ~ ~ ~ {Tags:['gen','t_f','8','hcz']}
$execute if score $(pos) hsq matches 9 run summon marker ~ ~ ~ {Tags:['gen','t_f','9','hcz']}
$execute if score $(pos) hsq matches 10 run summon marker ~ ~ ~ {Tags:['gen','t_f','10','hcz']}

# # $execute if score $(pos) hsq matches 10 run scoreboard players add 3 type_count 1
# # $execute if score $(pos) hsq matches 9 run scoreboard players add 3 type_count 1
# # $execute if score $(pos) hsq matches 8 run scoreboard players add 3 type_count 1
# # $execute if score $(pos) hsq matches 9 run scoreboard players add 3 type_count 1

#x-formed
$execute positioned ~ ~ ~ if score $(pos) hsq matches 11 run place template hcz:x_formed0

#marker
$execute if score $(pos) hsq matches 11 run summon marker ~ ~ ~ {Tags:['gen','x_f','11','hcz']}
# # $execute if score $(pos) hsq matches 11 run scoreboard players add 4 type_count 1

#lcz checkpoint
$execute positioned ~-7 ~1 ~1 if score $(pos) hsq matches 12 run place template lcz:lczcheck

# marker
# $execute if score $(pos) hsq matches 12 run summon marker ~ ~ ~ {Tags:['gen','checkpoint','12','checkp']}
# $execute if score $(pos) hsq matches 12 run scoreboard players add 5 type_count 1




# # deadends
# # $execute at @e[tag=gen,tag=dd,tag=lcz,sort=random,limit=1] positioned ~-1 ~ ~1 if score $(pos) hsq matches 16 run place template lcz:deadend/914_2
# # $execute at @e[tag=gen,tag=dd,tag=lcz,sort=random,limit=1] positioned ~-1 ~ ~1 if score $(pos) hsq matches 15 run place template lcz:deadend/914_0
# # $execute at @e[tag=gen,tag=dd,tag=lcz,sort=random,limit=1] positioned ~-1 ~ ~1 if score $(pos) hsq matches 14 run place template lcz:deadend/914_1
# # $execute at @e[tag=gen,tag=dd,tag=lcz,sort=random,limit=1] positioned ~-1 ~ ~1 if score $(pos) hsq matches 13 run place template lcz:deadend/914_3


# #random выведет случайное число 1..4, и поставит соответстующую комнату на место текущего тупика + скопирует переменную в temp0
# #random выведет случайное число 1..4, и если число не равно temp0, поставит соответстующую комнату на место текущего тупика + скопирует переменную в temp1
# #...

# # $execute if score $(pos) hsq matches 13..16 run function generation:get_random_list {"range":"1..4"}

#deadend
$execute positioned ~4 ~ ~5 if score $(pos) hsq matches 13 run place template hcz:dd0_0
$execute positioned ~4 ~ ~ if score $(pos) hsq matches 14 run place template hcz:dd0_2
$execute positioned ~ ~ ~1 if score $(pos) hsq matches 15 run place template hcz:dd0_3
$execute positioned ~1 ~ ~1 if score $(pos) hsq matches 16 run place template hcz:dd0_1

#marker
$execute if score $(pos) hsq matches 13 run summon marker ~ ~ ~ {Tags:['gen','dd','13','hcz']}
$execute if score $(pos) hsq matches 14 run summon marker ~ ~ ~ {Tags:['gen','dd','14','hcz']}
$execute if score $(pos) hsq matches 15 run summon marker ~ ~ ~ {Tags:['gen','dd','15','hcz']}
$execute if score $(pos) hsq matches 16 run summon marker ~ ~ ~ {Tags:['gen','dd','16','hcz']}



# ### SCP 914 = 1
# ### SCP 372 = 2
# ### archieve = 3
# ### elev = 4




# # $execute if score $(pos) hsq matches 13 run scoreboard players add 6 type_count 1
# # $execute if score $(pos) hsq matches 14 run scoreboard players add 6 type_count 1
# # $execute if score $(pos) hsq matches 15 run scoreboard players add 6 type_count 1
# # $execute if score $(pos) hsq matches 16 run scoreboard players add 6 type_count 1

# ### ROOMS OF INTEREST
# # execute if score 6 type_count > 6o type_count if predicate generation:20 run say 1