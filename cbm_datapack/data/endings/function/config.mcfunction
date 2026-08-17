#init all endings
function endings:a1/config
function endings:a2/config
function endings:b1/config
function endings:b2/config

#variables
scoreboard objectives add e dummy

#instances
scoreboard players set .selected e -1
scoreboard players set .timer e -1
scoreboard players set .isWarheadEnabled e 1

#constants
scoreboard players set .a1.maxtimer e 123456
scoreboard players set .a2.maxtimer e 123456
scoreboard players set .b1.maxtimer e 123456
scoreboard players set .b2.maxtimer e 123456
