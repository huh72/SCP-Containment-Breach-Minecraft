tag @n[type=wandering_trader, tag=scp1499_1origin] add toKill

tp @n[type=wandering_trader, tag=toKill] 0 32 0
kill @n[type=wandering_trader, tag=toKill]

execute as @n[type=item_display, tag=scp1499_1] run function animated_java:scp1499_1/remove/this