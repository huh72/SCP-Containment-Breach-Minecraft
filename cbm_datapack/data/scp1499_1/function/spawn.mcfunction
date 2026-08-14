summon wandering_trader ~ ~ ~ {Tags:['scp1499_1origin', 'elevatorTarget'],Silent:1b,Invulnerable:1b,PersistenceRequired:1b}
effect give @n[type=wandering_trader, tag=scp1499_1origin] invisibility infinite 1 true
attribute @n[type=wandering_trader, tag=scp1499_1origin] minecraft:movement_speed base set 0.4
attribute @n[type=wandering_trader, tag=scp1499_1origin] minecraft:follow_range base set 128


function animated_java:scp1499_1/summon with storage aj:temp