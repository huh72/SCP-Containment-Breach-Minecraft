tag @n[tag=door_marker,tag=event0] remove event0

title @a actionbar {"text":"event 0 have been initialized!"}

function scp173:despawn
execute as @n[tag=event0_spawn173] at @s run function scp173:spawn
execute at @n[tag=event0_spawncard1] run function spawn:drop/card2

kill @e[tag=event0_spawn173]
kill @e[tag=event0_spawncard1]