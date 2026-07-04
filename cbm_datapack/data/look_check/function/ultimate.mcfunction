#//g check within 13 blocks: 5 distances
#//g 0..1
#//g 2..4
#//g 5..7
#//g 8..10
#//g 11..13
#//g 
#//g for each distance its own look angle
#//g accept 3 macroses: "subject" (player), "object" (target), "d" (amount of checks per block)
#//g max iterations count = 13 * d

scoreboard players set 13 math 13
scoreboard players set 1 math 1
scoreboard players set 100 math 100
scoreboard players set 1000 math 1000

$data modify storage cb:lookcheck subject set value "$(subject)"
$data modify storage cb:lookcheck object set value "$(object)"

#//g value d is need to be stored (to later be multiplied by 13)
$scoreboard players set .d lookcheck $(d)

#//g stop executing if .d NOT 1..10 (unexpected values)
execute if score .d lookcheck < 0 math if score .d lookcheck > 10 math run return 0

#//g doing math
execute store result score .requestedIterations lookcheck run scoreboard players operation 13 math *= .d lookcheck
scoreboard players operation .d lookcheck *= 100 math
execute store result storage cb:lookcheck distanceBetweenCheck float 0.1 run scoreboard players operation 1000 math /= .d lookcheck 

#//g start raycast
function look_check:raycast/start with storage cb:lookcheck

#//g reset before next use
scoreboard players set .requestedIterations lookcheck 0



#//g return → true
#return 1

#//g return → false
#return 0