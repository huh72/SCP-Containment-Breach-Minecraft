execute store result storage cb:scp650 pose int 1 run random value 0..4 cb:scp650random
function scp650:setpose with storage cb:scp650

execute as @a[tag=!dead] at @s if block ^ ^ ^-1 #scp457:air run tag @s add scp650target
execute as @r[tag=scp650target] at @s run tp @n[tag=scp650] ^ ^ ^-1 facing entity @s