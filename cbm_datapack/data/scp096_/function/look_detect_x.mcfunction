# 1.достает ли 173 до игрока лучем 20 бл -- тэг can_see_173
# 2.смотрит ли игрок на печенье по х -- looking_on_173x
# 3.смотрит ли игрок на печенье по у -- looking_on_173y
# если верно только 1 -- тп, если верно хотя бы одно из 2 и 3 -- тп, но если верно 2 или 3, но не верно 1 -- афк, если ничего не верно -- 173 афк --> тп если есть 1, и нету 2 и 3

#get player's marker rotation
execute store result score @n[tag=scp096_playermarker] rot096x run data get entity @n[tag=scp096_playermarker] Rotation[0]

#get current player rotation
execute store result score @s rot096x run data get entity @s Rotation[0]

#store result "173's marker rotation - current player rotation" in res*
execute store result score @s rot096x run scoreboard players operation @n[tag=scp096_playermarker] rot096x -= @s rot096x

#module res*
execute if score @s rot096x matches ..-1 run function scp096_:abs_x

#set vars
# execute if score @s rot096x matches 0..65 run scoreboard players add look_on_096x v 1
# execute if score @s rot096x matches 300..360 run scoreboard players add look_on_096x v 1
execute if score @s rot096x matches 0..55 run tag @s add see096x
execute if score @s rot096x matches 300..360 run tag @s add see096x