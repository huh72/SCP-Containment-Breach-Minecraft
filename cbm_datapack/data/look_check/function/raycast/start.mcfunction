scoreboard players set .iterations lookcheck 0
scoreboard players set .result lookcheck 0
scoreboard players set .rayReachedObject lookcheck 0
tag @s remove hasLineOfSight

function look_check:raycast/loop with storage cb:lookcheck