scoreboard objectives add rageCycle dummy

scoreboard players set .rageCD rageCycle 40
scoreboard players set .triggerTime rageCycle 160
scoreboard players set .timeToTP rageCycle 600
scoreboard players set .maxHuntTime rageCycle 1800

scoreboard players operation .triggerTime rageCycle += .rageCD rageCycle
scoreboard players operation .timeToTP rageCycle += .triggerTime rageCycle
scoreboard players operation .maxHuntTime rageCycle += .timeToTP rageCycle
#
# 0(idle) -> 40 (ready to be triggered) -> 200 (40 + 160) (enter rage) -> 800 (200 + 600) (tp to player) -> 2600 (800 + 1800) (end of rage)