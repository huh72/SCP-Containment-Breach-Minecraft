#//g check within 13 blocks: 5 distances
#//g 0..1   (2)
#//g 2..4   (3)
#//g 5..7   (3)
#//g 8..10  (3)
#//g 11..13 (3)
#//g 
#//g for each distance its own look angle
#//g accept 6 macroses: "subject" (player), "object" (target), "d" (amount of checks per block), "n" (means blocks which can go through) = (0 or 1 or 2), "e" ( if raycast hit object entity, define tag which will be attached to a player ) and "t" ( 096 / 650 )
#//g max iterations count = 15 * d

#//g all - 0
#//g fence - 1
#//g glass - 2

function look_check:preconfig

$data modify storage cb:lookcheck subject set value "$(subject)"
$data modify storage cb:lookcheck object set value "$(object)"
$data modify storage cb:lookcheck passThroughType set value "$(n)"
$data modify storage cb:lookcheck objectName set value "$(e)"

#//g value d is need to be stored (to later be multiplied by 13)
$scoreboard players set .d lookcheck $(d)

#//g stop executing if .d NOT 1..10 (unexpected values)
execute if score .d lookcheck < 1 math run return run function look_check:throwerror
execute if score .d lookcheck > 10 math run return run function look_check:throwerror

#//g doing math
scoreboard players operation .d0 lookcheck *= .d lookcheck
scoreboard players operation .d1 lookcheck *= .d lookcheck
scoreboard players operation .d2 lookcheck *= .d lookcheck
scoreboard players operation .d3 lookcheck *= .d lookcheck
scoreboard players operation .d4 lookcheck *= .d lookcheck

execute store result score .requestedIterations lookcheck run scoreboard players operation 15 math *= .d lookcheck
scoreboard players operation .d lookcheck *= 100 math
execute store result storage cb:lookcheck distanceBetweenCheck float 0.1 run scoreboard players operation 1000 math /= .d lookcheck 

#//g start raycast → tag or nothing
$execute as $(subject) at @s positioned ~ ~1.5 ~ facing entity $(object)] eyes run function look_check:raycast/start with storage cb:lookcheck

#//g temp result
# execute if entity @s[tag=hasLineOfSight] run tellraw @a [{"text":"hasLineOfSight"}]
# execute if entity @s[tag=hasLineOfSight0] run tellraw @a [{"text":"hasLineOfSight0"}]
# execute if entity @s[tag=hasLineOfSight1] run tellraw @a [{"text":"hasLineOfSight1"}]
# execute if entity @s[tag=hasLineOfSight2] run tellraw @a [{"text":"hasLineOfSight2"}]
# execute if entity @s[tag=hasLineOfSight3] run tellraw @a [{"text":"hasLineOfSight3"}]
# execute if entity @s[tag=hasLineOfSight4] run tellraw @a [{"text":"hasLineOfSight4"}]


$execute as $(subject)[tag=hasLineOfSight] run function look_check:rotation with storage cb:lookcheck
execute as @a[tag=hasLineOfSight] run function look_check:clear with storage cb:lookcheck

#//g reset before next use
scoreboard players set .requestedIterations lookcheck 0

#//g
# kill @e[tag=look_check.helper]

#//g return → true
#return 1

#//g return → false
#return 0