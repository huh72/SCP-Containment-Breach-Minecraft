$execute if score $(pos) esq matches 0 run return run tellraw @s {"text":"."}

#straight
$execute positioned ~ ~1 ~6 if score $(pos) esq matches 1 run place template ez:str0_0
$execute positioned ~6 ~1 ~ if score $(pos) esq matches 2 run place template ez:str0_1

$execute if score $(pos) esq matches 1 run summon marker ~ ~ ~ {Tags:['gen','str','1','ez']}
$execute if score $(pos) esq matches 2 run summon marker ~ ~ ~ {Tags:['gen','str','2','ez']}


#corner
$execute positioned ~ ~1 ~6 if score $(pos) esq matches 6 run place template ez:cor0_1
$execute positioned ~ ~1 ~ if score $(pos) esq matches 5 run place template ez:cor0_0
$execute positioned ~6 ~1 ~6 if score $(pos) esq matches 4 run place template ez:cor0_2
$execute positioned ~3 ~1 ~ if score $(pos) esq matches 3 run place template ez:cor0_3

$execute if score $(pos) esq matches 3 run summon marker ~ ~ ~ {Tags:['gen','corner','3','ez']}
$execute if score $(pos) esq matches 4 run summon marker ~ ~ ~ {Tags:['gen','corner','4','ez']}
$execute if score $(pos) esq matches 5 run summon marker ~ ~ ~ {Tags:['gen','corner','5','ez']}
$execute if score $(pos) esq matches 6 run summon marker ~ ~ ~ {Tags:['gen','corner','6','ez']}


#t-formed
$execute positioned ~ ~1 ~ if score $(pos) esq matches 10 run place template ez:t_formed0_2
$execute positioned ~3 ~1 ~ if score $(pos) esq matches 9 run place template ez:t_formed0_1
$execute positioned ~ ~1 ~3 if score $(pos) esq matches 8 run place template ez:t_formed0_0
$execute positioned ~ ~1 ~ if score $(pos) esq matches 7 run place template ez:t_formed0_3

$execute if score $(pos) esq matches 7 run summon marker ~ ~ ~ {Tags:['gen','t_f','7','ez']}
$execute if score $(pos) esq matches 8 run summon marker ~ ~ ~ {Tags:['gen','t_f','8','ez']}
$execute if score $(pos) esq matches 9 run summon marker ~ ~ ~ {Tags:['gen','t_f','9','ez']}
$execute if score $(pos) esq matches 10 run summon marker ~ ~ ~ {Tags:['gen','t_f','10','ez']}


#x-formed
$execute positioned ~ ~1 ~ if score $(pos) esq matches 11 run place template ez:x_formed0

$execute if score $(pos) esq matches 11 run summon marker ~ ~ ~ {Tags:['gen','x_f','11','ez']}


#hcz-ez checkpoint
# $execute positioned ~-3 ~1 ~ if score $(pos) esq matches 12 run place template lcz:hczcheck
# $execute positioned ~-3 ~1 ~ if score $(pos) esq matches 17 run place template lcz:hczcheck


#deadend
$execute positioned ~ ~ ~1 if score $(pos) esq matches 13 run place template lcz:deadend/106_1
$execute positioned ~ ~ ~ if score $(pos) esq matches 14 run place template lcz:deadend/106_2
$execute positioned ~1 ~ ~1 if score $(pos) esq matches 15 run place template lcz:deadend/106_3
$execute positioned ~1 ~ ~ if score $(pos) esq matches 16 run place template lcz:deadend/106_4

$execute if score $(pos) esq matches 13 run summon marker ~ ~ ~ {Tags:['gen','dd','13','ez']}
$execute if score $(pos) esq matches 14 run summon marker ~ ~ ~ {Tags:['gen','dd','14','ez']}
$execute if score $(pos) esq matches 15 run summon marker ~ ~ ~ {Tags:['gen','dd','15','ez']}
$execute if score $(pos) esq matches 16 run summon marker ~ ~ ~ {Tags:['gen','dd','16','ez']}