#message
# $title @s actionbar {"text":"$(text)"}
scoreboard players operation @s save_cd = max* save_cd
tag @s add save_f

execute at @s run playsound cb:general.save ambient @s ~ ~ ~ 1

#
#kill previous spawn point
execute as @e[type=marker, tag=save] at @s if score @s global_num = @p[tag=save_f] global_num run kill @s[tag=save]

#summon marker
execute at @s run summon marker ~ ~ ~ {Tags:["save","s_new"]}

#get player Rotation
data get entity @s Rotation
data modify entity @e[tag=s_new,limit=1] Rotation set from entity @s Rotation

#matching player's id and marker id
scoreboard players operation @e[tag=s_new] global_num = @s global_num

#remove tags
tag @e remove s_new
tag @e remove save_f