$execute if score $(pos) hsq matches 0 run return run tellraw @s {"text":"."}

#straight
$execute positioned ~ ~1 ~6 if score $(pos) hsq matches 1 run place template hcz:str0_0
$execute positioned ~6 ~1 ~ if score $(pos) hsq matches 2 run place template hcz:str0_1

$execute if score $(pos) hsq matches 1 run summon marker ~ ~ ~ {Tags:['gen','str','1','hcz']}
$execute if score $(pos) hsq matches 2 run summon marker ~ ~ ~ {Tags:['gen','str','2','hcz']}


#corner
$execute positioned ~ ~1 ~6 if score $(pos) hsq matches 6 run place template hcz:corner0_2
$execute positioned ~ ~1 ~ if score $(pos) hsq matches 5 run place template hcz:corner0_3
$execute positioned ~6 ~1 ~6 if score $(pos) hsq matches 4 run place template hcz:corner0_1
$execute positioned ~6 ~1 ~ if score $(pos) hsq matches 3 run place template hcz:corner0_0

$execute if score $(pos) hsq matches 3 run summon marker ~ ~ ~ {Tags:['gen','corner','3','hcz']}
$execute if score $(pos) hsq matches 4 run summon marker ~ ~ ~ {Tags:['gen','corner','4','hcz']}
$execute if score $(pos) hsq matches 5 run summon marker ~ ~ ~ {Tags:['gen','corner','5','hcz']}
$execute if score $(pos) hsq matches 6 run summon marker ~ ~ ~ {Tags:['gen','corner','6','hcz']}


#t-formed
$execute positioned ~ ~ ~ if score $(pos) hsq matches 10 run place template hcz:t_formed0_1
$execute positioned ~5 ~ ~ if score $(pos) hsq matches 9 run place template hcz:t_formed0_2
$execute positioned ~ ~ ~5 if score $(pos) hsq matches 8 run place template hcz:t_formed0_3
$execute positioned ~ ~ ~ if score $(pos) hsq matches 7 run place template hcz:t_formed0_0

$execute if score $(pos) hsq matches 7 run summon marker ~ ~ ~ {Tags:['gen','t_f','7','hcz']}
$execute if score $(pos) hsq matches 8 run summon marker ~ ~ ~ {Tags:['gen','t_f','8','hcz']}
$execute if score $(pos) hsq matches 9 run summon marker ~ ~ ~ {Tags:['gen','t_f','9','hcz']}
$execute if score $(pos) hsq matches 10 run summon marker ~ ~ ~ {Tags:['gen','t_f','10','hcz']}


#x-formed
$execute positioned ~ ~ ~ if score $(pos) hsq matches 11 run place template hcz:x_formed0

$execute if score $(pos) hsq matches 11 run summon marker ~ ~ ~ {Tags:['gen','x_f','11','hcz']}


#hcz-ez checkpoint
$execute positioned ~-3 ~1 ~ if score $(pos) hsq matches 12 run place template lcz:hczcheck
$execute positioned ~-3 ~1 ~ if score $(pos) hsq matches 17 run place template lcz:hczcheck


#deadend
$execute positioned ~ ~ ~4 if score $(pos) hsq matches 13 run place template hcz:dd0_1
$execute positioned ~4 ~ ~ if score $(pos) hsq matches 14 run place template hcz:dd0_3
$execute positioned ~5 ~ ~4 if score $(pos) hsq matches 15 run place template hcz:dd0_4
$execute positioned ~4 ~ ~ if score $(pos) hsq matches 16 run place template hcz:dd0_2

$execute if score $(pos) hsq matches 13 run summon marker ~ ~ ~ {Tags:['gen','dd','13','hcz']}
$execute if score $(pos) hsq matches 14 run summon marker ~ ~ ~ {Tags:['gen','dd','14','hcz']}
$execute if score $(pos) hsq matches 15 run summon marker ~ ~ ~ {Tags:['gen','dd','15','hcz']}
$execute if score $(pos) hsq matches 16 run summon marker ~ ~ ~ {Tags:['gen','dd','16','hcz']}