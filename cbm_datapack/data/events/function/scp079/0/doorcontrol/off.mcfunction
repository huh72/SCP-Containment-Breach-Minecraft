tag @e[tag=gate, tag=blocked] add unblocked
tag @e[tag=gate, tag=blocked] remove blocked

#g if level = 99 -> gate appears to be locked. (special message for gate locked by foundation or smth)
scoreboard players set @n[tag=gate.gateA] access_level 99
scoreboard players set @n[tag=gate.gateB] access_level 99
#no 079

scoreboard players set .state doorControl 0