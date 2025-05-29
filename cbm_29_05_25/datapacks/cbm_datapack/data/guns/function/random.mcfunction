#get after and before points of x
#get negative after and before points of x
#get after and before points of y
#get negative after and before points of y

##### MACROSES #####

#get after x
# execute store result storage acc_macros pos_a_x int 1 run scoreboard players get @s acc
#!
# tellraw @a {"score":{"name":"@s","objective":"acc"}}
# tellraw @a {"score":{"name":"ax_point","objective":"acc"}}



#####  POSITIVE #####

# x #

# get after x 
$execute store result score ax_point acc run random value $(pos_an)..$(pos_a) cb:acc

#get before x
$execute store result score bx_point acc run random value $(pos_bn)..$(pos_b) cb:acc

# y #

# get after y 
$execute store result score ay_point acc run random value $(pos_an)..$(pos_a) cb:acc

#get before y
$execute store result score by_point acc run random value $(pos_bn)..$(pos_b) cb:acc


# tellraw @a [{"text":"XXX after point - "},{"score":{"name":"ax_point","objective":"acc"}}]
# tellraw @a [{"text":"XXX  before point - "},{"score":{"name":"bx_point","objective":"acc"}}]