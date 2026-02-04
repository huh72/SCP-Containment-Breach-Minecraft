scoreboard objectives add i dummy
scoreboard objectives add i2 dummy

scoreboard players set .timer i -1


#statuses:
#-1 - not ic cell == lobby?
#0 - cell
#1 - waiting for guards
#2 - guards are waiting for player to come out
#3 - guards leading player to 173's chamber
#4 - two last rooms
#5 - player takes the paper

scoreboard players set .status i -1
scoreboard players set .ambient i -1
scoreboard players set .ambient.max i 140

#
scoreboard players set .conv i -1

#timings
#time until door will be opened (status = 1)
scoreboard players set .dooropen.time i 250

#time until phrase "Hey, they've got some work for you"
scoreboard players set .phrase0.time i 270

#time after which guards will go to path point 0
scoreboard players set .goto0.time i 360

#tset time tp 1000 after reaching room near chamber
scoreboard players set 1000 i 1000

#by the way time
scoreboard players set .bythwway.time i 1150

#tset time tp 1200 after reaching room near chamber
scoreboard players set 1200 i 1200

#attention to all class-d...
scoreboard players set .franklin.enter.time i 1260

#class-d approach inside the chamber timings
scoreboard players set .cd0.approach.time i 1300
scoreboard players set .cd1.approach.time i 1320
#end approach
scoreboard players set .cd.approach.stop.time i 1390

###==========================================================
#(gate closes when player is inside the chamber)
#after closing gate wait for 20 ticks (.timer i = 1400) -> 1420 and then sound: "plase approach SCP-173 for testing"
#1440 - gate open
#1480 - cd0 approach
#1500 - cd0 stop approach & sound "breach"
#1740 - 173 kills cd0 & at guard pos "WTF..." sound
#1750 - 173 kills cd1
#1760 - 173 tp to player 
#when player is outof chamber - tp dummy near guard and play "shit shit..." sound & .timer i = 1800 & guard start shooting
#1820 - 173 kills the guard & tp player to real map


#reset timer when gate is closed
scoreboard players set 1400 i 1400

#playsound "approach"
scoreboard players set .approach.sound.time i 1420

#gate re-open time
scoreboard players set .gate.open.time i 1460

#re-approach of class-d 0
scoreboard players set .cd0.approach2.time i 1480

#stop re-approach of class-d 0 & sound
scoreboard players set .cd0.approach2.stop.time i 1490

#stop re-approach of class-d 0 & sound
scoreboard players set .cd0.phrase0.time i 1560

#
scoreboard players set .173move0.time i 1720
scoreboard players set .173move1.time i 1735
scoreboard players set .173move2.time i 1750

scoreboard players set .darkness.time i 1810
scoreboard players set .final.time i 1830




### after breach sound timings =============================
scoreboard players set .timer.sound i -1
scoreboard players set .ab.sound0 i 0
scoreboard players set .ab.sound1 i 94
scoreboard players set .ab.sound2 i 223
scoreboard players set .ab.sound3 i 360
scoreboard players set .ab.sound4 i 542
scoreboard players set .ab.sound5 i 660
scoreboard players set .ab.sound6 i 820
scoreboard players set .ab.sound7 i 950
scoreboard players set .ab.sound8 i 1020
scoreboard players set .ab.sound9 i 1105
scoreboard players set .ab.sound10 i 1250
