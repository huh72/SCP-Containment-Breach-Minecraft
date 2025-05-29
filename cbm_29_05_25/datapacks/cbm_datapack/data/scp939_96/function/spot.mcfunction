#say spot!
playsound cb:scp939.chase ambient @s[tag=!spotted] ~ ~ ~ 1 1 1
tag @s add spotted
data modify entity @e[tag=scp939,limit=1] AngryAt set from entity @s UUID
attribute @e[tag=scp939,limit=1] generic.movement_speed modifier add 1488-0-0-0-3 0.05 add_value
#function scp939_53:anger_on_player