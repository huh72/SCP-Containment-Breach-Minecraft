# execute if entity ^ ^ ^-0.4 #drop:air run tag @s add dback
# execute if entity ^ ^ ^0.4 #drop:air run tag @s add dfront
# execute if entity ^0.4 ^ ^ #drop:air run tag @s add dleft
# execute if entity ^-0.4 ^ ^ #drop:air run tag @s add dright

tag @s remove dback
tag @s remove dfront
tag @s remove dleft
tag @s remove dright

# execute at @s anchored eyes positioned ^ ^ ^0.1 if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dback
# execute at @s anchored eyes positioned ^ ^ ^-0.1 if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dfront
# execute at @s anchored eyes positioned ^0.1 ^ ^ if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dleft
# execute at @s anchored eyes positioned ^-0.1 ^ ^ if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dright

# execute at @s anchored eyes positioned ^ ^ ^0.2 if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dback
# execute at @s anchored eyes positioned ^ ^ ^-0.2 if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dfront
# execute at @s anchored eyes positioned ^0.2 ^ ^ if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dleft
# execute at @s anchored eyes positioned ^-0.2 ^ ^ if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dright

# execute at @s anchored eyes positioned ^ ^ ^0.3 if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dback
# execute at @s anchored eyes positioned ^ ^ ^-0.3 if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dfront
# execute at @s anchored eyes positioned ^0.3 ^ ^ if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dleft
# execute at @s anchored eyes positioned ^-0.3 ^ ^ if entity @e[tag=drop,distance=0.01..0.1,limit=1] run tag @s add dright


###
execute at @s anchored eyes positioned ^ ^ ^0.4 if entity @e[tag=drop,distance=0.01..0.4,limit=5] run tag @s add dback
execute at @s anchored eyes positioned ^ ^ ^-0.4 if entity @e[tag=drop,distance=0.01..0.4,limit=5] run tag @s add dfront
execute at @s anchored eyes positioned ^0.4 ^ ^ if entity @e[tag=drop,distance=0.01..0.4,limit=5] run tag @s add dleft
execute at @s anchored eyes positioned ^-0.4 ^ ^ if entity @e[tag=drop,distance=0.01..0.4,limit=5] run tag @s add dright
