playsound cb:scp173.necksnap ambient @a ~ ~ ~ 0.4 1 1
execute at @s run tp @n[tag=dummy] ^ ^0.25 ^0.5 facing entity @s

function main:death
tag @s add d_173