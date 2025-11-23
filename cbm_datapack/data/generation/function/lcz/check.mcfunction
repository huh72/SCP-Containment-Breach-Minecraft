#filler
# $execute positioned ~ ~ ~ if score $(pos) sq matches -1 run place template lcz:filler
$execute if score $(pos) sq matches 0 run return run tellraw @s {"text":"."}

#straight
$execute positioned ~ ~ ~ if score $(pos) sq matches 1 run place template lcz:straight0_1
$execute positioned ~ ~ ~ if score $(pos) sq matches 2 run place template lcz:straight0_2

#markers
$execute if score $(pos) sq matches 1 run summon marker ~ ~ ~ {Tags:['gen','str','1','lcz']}
$execute if score $(pos) sq matches 2 run summon marker ~ ~ ~ {Tags:['gen','str','2','lcz']}


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


#t-formed
$execute positioned ~ ~ ~ if score $(pos) sq matches 10 run place template lcz:t_formed0_1
$execute positioned ~ ~ ~ if score $(pos) sq matches 9 run place template lcz:t_formed0_2
$execute positioned ~ ~ ~ if score $(pos) sq matches 8 run place template lcz:t_formed0_3
$execute positioned ~ ~ ~ if score $(pos) sq matches 7 run place template lcz:t_formed0_4

$execute if score $(pos) sq matches 7 run summon marker ~ ~ ~ {Tags:['gen','t_f','7','lcz']}
$execute if score $(pos) sq matches 8 run summon marker ~ ~ ~ {Tags:['gen','t_f','8','lcz']}
$execute if score $(pos) sq matches 9 run summon marker ~ ~ ~ {Tags:['gen','t_f','9','lcz']}
$execute if score $(pos) sq matches 10 run summon marker ~ ~ ~ {Tags:['gen','t_f','10','lcz']}

#x-formed
$execute positioned ~ ~ ~ if score $(pos) sq matches 11 run place template lcz:x_formed0_0

#marker
$execute if score $(pos) sq matches 11 run summon marker ~ ~ ~ {Tags:['gen','x_f','11','lcz']}

#lcz checkpoint
$execute positioned ~-7 ~1 ~ if score $(pos) sq matches 12 run place template lcz:lczcheck

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