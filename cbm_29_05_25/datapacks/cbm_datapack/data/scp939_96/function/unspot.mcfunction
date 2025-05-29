#say unspot!
tag @s remove spotted
data modify entity @e[tag=scp939,limit=1] AngryAt set from entity @e[tag=scp173,limit=1] UUID
attribute @e[tag=scp939,limit=1] generic.movement_speed modifier remove 1488-0-0-0-3
#function scp939_53:anger_by