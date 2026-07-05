function scp106evolution:tick
function scp173:tick
function scp049:tick
function scp049_2:tick
function scp939:tick
function scp914:tick
function scp066:tick
function scp008:tick
function look_check:temp
execute as @e[type=pig, tag=scp1048origin] at @s run function scp1048:handler
execute as @e[type=husk, tag=scp1048Aorigin] at @s run function scp1048a:handler
execute as @e[type=wandering_trader, tag=scp1499_1origin] at @s run function scp1499_1:handler
execute as @e[type=zombie, tag=infected008, tag=active, tag=!dead] at @s run function infected008:handler
execute as @e[type=item_display, tag=scp372] at @s run function scp372:handler
execute as @e[type=zombie, tag=scp650] at @s run function scp650:handler
execute as @e[type=zombie, tag=scp096] at @s run function scp096:handler
#function scp939_89:tick

