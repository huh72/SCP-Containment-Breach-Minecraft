#applying rotation
execute as @a[tag=see096x,tag=see096y,tag=can_see_096] at @n[tag=scp096] run tp @n[tag=scp096_marker] ~ ~1 ~ facing entity @s eyes

#get 096 marker rotX
execute store result score @n[tag=scp096_marker] rot096x run data get entity @n[tag=scp096_marker] Rotation[0]
#get 096 origin rotX
execute store result score 096 rot096x run data get entity @n[tag=scp096] Rotation[0]

#math op
scoreboard players operation 096 rot096x -= @n[tag=scp096_marker] rot096x
#applying abs func
execute if score 096 rot096x matches ..-1 run scoreboard players operation 096 rot096x *= -1 math
# execute if score 096 rot096x matches 0..80 run tellraw @a [{"text":"X: ","color":"red"},{"score":{"name":"096","objective":"rot096x"}}]
# execute unless score 096 rot096x matches 0..80 run tellraw @a [{"text":"X: ","color":"white"},{"score":{"name":"096","objective":"rot096x"}}]

#final tag set
execute if score 096 rot096x matches 0..80 run tag @s[tag=see096x,tag=see096y,tag=can_see_096] add scp096target
execute if score 096 rot096x matches 0..80 run playsound cb:scp096.triggered ambient @s ~ ~100 ~ 1000 1 1