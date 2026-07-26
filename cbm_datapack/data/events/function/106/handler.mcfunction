execute if score .0 106chamber.lever.cd matches 1.. run scoreboard players remove .0 106chamber.lever.cd 1
execute if score .static event106 < .maxStatic event106 if score .static event106 matches 0.. run scoreboard players add .static event106 1
execute if score .sound event106 matches 1 if score .line event106 matches 0.. run scoreboard players add .line event106 1
execute if score .breaker event106 matches 1 if score .breakerTimer event106 matches 0.. run scoreboard players add .breakerTimer event106 1
execute if score .breaker event106 matches 1 if score .breakerTimer event106 > .breaker13 event106 if score .sniffling event106 matches 0.. run scoreboard players add .sniffling event106 1

#g reboot
execute if score .0 106chamber.lever.cd matches 0 run tag @n[tag=lever, tag=reboot] remove uninteractibale

execute as @e[tag=lever] if entity @s[tag=reboot, tag=up] if score .magnet event106 matches 0 run return run function events:106/levers/reboot/on
execute as @e[tag=lever] if entity @s[tag=reboot, tag=down] if score .magnet event106 matches 1 run return run function events:106/levers/reboot/off

#g sound 
execute if score .static event106 = .maxStatic event106 run function events:106/levers/sound/play/static
execute if score .line event106 = .line1 event106 run function events:106/levers/sound/play/line1
execute if score .line event106 = .line2 event106 run function events:106/levers/sound/play/line2
execute if score .line event106 = .line3 event106 run function events:106/levers/sound/play/line3
execute if score .line event106 = .line4 event106 run function events:106/levers/sound/play/line4
execute if score .line event106 = .line5 event106 run function events:106/levers/sound/play/line5
execute if score .line event106 = .line6 event106 run function events:106/levers/sound/play/line4
execute if score .line event106 = .line7 event106 run function events:106/levers/sound/play/line3

execute as @e[tag=lever] if entity @s[tag=soundTransmission, tag=up] if score .sound event106 matches 0 run return run function events:106/levers/sound/on
execute as @e[tag=lever] if entity @s[tag=soundTransmission, tag=down] if score .sound event106 matches 1 run return run function events:106/levers/sound/off

#g femur breaker
execute as @e[tag=lever] if entity @s[tag=femurBreaker, tag=up, tag=!uninteractibale] run function events:106/levers/femur/on

execute if score .breakerTimer event106 = .breaker0 event106 run function events:106/levers/sound/play/breaker/0
execute if score .breakerTimer event106 = .breaker1 event106 run function events:106/levers/sound/play/breaker/1
execute if score .breakerTimer event106 = .breaker2 event106 run function events:106/levers/sound/play/breaker/2
execute if score .breakerTimer event106 = .breaker3 event106 run function events:106/levers/sound/play/breaker/3
execute if score .breakerTimer event106 = .breaker4 event106 run function events:106/levers/sound/play/breaker/4
execute if score .breakerTimer event106 = .breaker5 event106 run function events:106/levers/sound/play/breaker/5
execute if score .breakerTimer event106 = .breaker6 event106 run function events:106/levers/sound/play/breaker/6
execute if score .breakerTimer event106 = .breaker7 event106 run function events:106/levers/sound/play/breaker/7
execute if score .breakerTimer event106 = .breaker8 event106 run function events:106/levers/sound/play/breaker/8
execute if score .breakerTimer event106 = .breaker9 event106 run function events:106/levers/sound/play/breaker/9
execute if score .breakerTimer event106 = .breaker10 event106 run function events:106/levers/sound/play/breaker/10
execute if score .breakerTimer event106 = .breaker11 event106 run function events:106/levers/sound/play/breaker/11
execute if score .breakerTimer event106 = .breaker12 event106 run function events:106/levers/sound/play/breaker/12
execute if score .breakerTimer event106 = .breaker13 event106 run function events:106/levers/sound/play/breaker/13

execute if score .breakerTimer event106 = .106appear event106 if score .magnet event106 matches 0 run function events:106/appearinside
execute if score .breakerTimer event106 = .106appear event106 if score .magnet event106 matches 1 run function events:106/appearoutside

execute if score .breakerTimer event106 = .106contain event106 if score .magnet event106 matches 0 run function events:106/appearoutside
execute if score .breakerTimer event106 = .106contain event106 run scoreboard players set .breakerTimer event106 -1
# execute if score .breakerTimer event106 = .106contain event106 if score .magnet event106 matches 1 run function events:106/levers/sound/play/breaker/13

execute if score .sniffling event106 = .sniffling0 event106 run function events:106/levers/sound/play/sniffling
execute if score .sniffling event106 = .sniffling1 event106 run function events:106/levers/sound/play/sniffling
execute if score .sniffling event106 = .sniffling2 event106 run function events:106/levers/sound/play/sniffling
execute if score .sniffling event106 = .sniffling2 event106 run scoreboard players set .sniffling event106 0

