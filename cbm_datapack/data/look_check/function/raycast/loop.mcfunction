scoreboard players add .iterations lookcheck 1

# particle happy_villager



execute if score .iterations lookcheck = .d0 lookcheck run scoreboard players set .currDistance lookcheck 0
execute if score .iterations lookcheck = .d1 lookcheck run scoreboard players set .currDistance lookcheck 1
execute if score .iterations lookcheck = .d2 lookcheck run scoreboard players set .currDistance lookcheck 2
execute if score .iterations lookcheck = .d3 lookcheck run scoreboard players set .currDistance lookcheck 3
execute if score .iterations lookcheck = .d4 lookcheck run scoreboard players set .currDistance lookcheck 4

$execute positioned ~ ~-1 ~ if entity $(object),distance=..1] run function look_check:raycast/detected with storage cb:lookcheck


$execute positioned ^ ^ ^$(distanceBetweenCheck) if score .iterations lookcheck <= .requestedIterations lookcheck if block ~ ~ ~ #look_check:$(passThroughType) run function look_check:raycast/loop with storage cb:lookcheck