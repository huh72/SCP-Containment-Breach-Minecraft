$rotate @n[tag=pf.point$(iteration)] facing entity @p[tag=mtf.pf.target] eyes

$execute store result score .targetRotation mtf.pf run data get entity @n[tag=pf.point$(iteration)] Rotation[0]
$execute store result storage cb:mtf.pf rotation int 1 run data get entity @n[tag=pf.point$(iteration)] Rotation[0]

scoreboard players set .cycle mtf.pf 0