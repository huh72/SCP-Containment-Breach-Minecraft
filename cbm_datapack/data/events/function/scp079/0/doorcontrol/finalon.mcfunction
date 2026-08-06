tag @e[tag=gate, tag=unblocked, tag=!gate.gateA, tag=!gate.gateB] add blocked
tag @e[tag=gate, tag=unblocked] remove unblocked

scoreboard players set @n[tag=gate.gateA] access_level 5
scoreboard players set @n[tag=gate.gateB] access_level 5

playsound cb:scp079.gateb ambient @a ~ ~ ~ 0.66 1 1

tag @n[tag=elc.doorControl] add uninteractibale
scoreboard players set .state doorControl 1
scoreboard players set .speech event.079 -3