execute at @n[tag=finalElevator] run tp @p[tag=tpTarget] ~ ~ ~

$execute at @n[tag=finalElevator] as @p[tag=tpTarget] at @s run tp @s ~$(moveOnX) ~ ~$(moveOnZ) ~$(diffRotX) ~

# $say movepnX:$(moveOnX), diffRot:$(diffRotX), tpTarget:@p[tag=tpTarget]

# tell @p[tag=tpTarget] "Was teleported succesfully!"


tag @e remove currElevator
tag @e remove finalElevator
tag @a remove tpTarget