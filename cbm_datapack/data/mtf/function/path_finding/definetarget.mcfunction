tag @n[tag=mtf, sort=random] add mtf.pf.executor
tag @r[tag=ez] add mtf.pf.target

rotate @n[tag=mtf.pf.executor] facing entity @p[tag=mtf.pf.target] eyes

execute store result score .targetRotation mtf.pf run data get entity @n[tag=mtf.pf.executor] Rotation[0]
execute store result storage cb:mtf.pf rotation int 1 run data get entity @n[tag=mtf.pf.executor] Rotation[0]

#temp
function mtf:path_finding/start with storage cb:mtf.pf