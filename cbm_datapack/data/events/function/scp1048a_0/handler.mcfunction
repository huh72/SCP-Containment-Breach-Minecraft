execute if entity @p[tag=!dead, distance=..14] unless entity @n[tag=scp1048Aorigin] if entity @s[tag=!delayed] run function events:scp1048a_0/spawn
execute if entity @p[tag=!dead, distance=..14] if entity @n[tag=scp1048Aorigin] run tag @s add delayed

execute unless entity @p[tag=!dead, distance=..14] unless entity @n[tag=scp1048Aorigin] if entity @s[tag=delayed] run tag @s remove delayed