tag @n[tag=door_marker,tag=event0] remove event0

function scp173:despawn
execute as @n[tag=event0_spawn173] at @s run function scp173:spawn
execute at @n[tag=event0_spawncard1] run function spawn:drop/card2 {"state":"0"}

kill @e[tag=event0_spawn173]
kill @e[tag=event0_spawncard1]