execute store result storage cb:scp650 pose int 1 run random value 0..4 cb:scp650random
function scp650:setpose with storage cb:scp650
execute as @r[tag=!dead] at @s run tp @n[tag=scp650] ^ ^ ^-1 facing entity @s