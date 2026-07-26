scoreboard objectives add 106chamber.lever.cd dummy
scoreboard objectives add event106 dummy

#megnet off = 0, magnet on = 1
execute unless score .magnet event106 matches 0.. run scoreboard players set .magnet event106 0
execute unless score .sound event106 matches 0.. run scoreboard players set .sound event106 0
execute unless score .breaker event106 matches 0.. run scoreboard players set .breaker event106 0

execute unless score .static event106 matches 0.. run scoreboard players set .static event106 0
execute unless score .breaker event106 matches 0.. run scoreboard players set .breaker event106 0
execute unless score .line event106 matches 0.. run scoreboard players set .line event106 0
execute unless score .sniffling event106 matches 0.. run scoreboard players set .sniffling event106 0
execute unless score .0 106chamber.lever.cd matches 0.. run scoreboard players set .0 106chamber.lever.cd 0

scoreboard players set .line1 event106 50
scoreboard players set .line2 event106 130
scoreboard players set .line3 event106 240
scoreboard players set .line4 event106 360
scoreboard players set .line5 event106 460
scoreboard players set .line6 event106 580
scoreboard players set .line7 event106 720

scoreboard players set .breaker0 event106 40
scoreboard players set .breaker1 event106 80
scoreboard players set .breaker2 event106 120
scoreboard players set .breaker3 event106 160
scoreboard players set .breaker4 event106 200
scoreboard players set .breaker5 event106 240
scoreboard players set .breaker6 event106 280
scoreboard players set .breaker7 event106 320
scoreboard players set .breaker8 event106 360
scoreboard players set .breaker9 event106 400
scoreboard players set .breaker10 event106 440
scoreboard players set .breaker11 event106 480
scoreboard players set .breaker12 event106 520
scoreboard players set .breaker13 event106 560

scoreboard players set .106appear event106 950
scoreboard players set .106contain event106 1300

scoreboard players set .sniffling0 event106 70
scoreboard players set .sniffling1 event106 160
scoreboard players set .sniffling2 event106 240

scoreboard players set .max0 106chamber.lever.cd 200
scoreboard players set .maxStatic event106 27