#timers
#status = 5 (while guard waiting player to take a paper)
execute unless score .status i matches 5 unless score .status i matches 7 unless score .status i matches 9 run scoreboard players add .timer i 1
scoreboard players operation .timer i2 = .timer i
scoreboard players remove .ambient i 1
tag @a remove canTakePaper

#in chamber detect
scoreboard players set @a v 0
execute at @n[tag=i.inGateDetector] run function int:events/testing/inchamberdetect0
execute at @n[tag=i.inGateDetector] run function int:events/testing/inchamberdetect1

# check if player can see 173's dummy
execute as @a at @s run tp @n[tag=lookdetecthandler173] ~ ~ ~ facing entity @n[tag=dummy]
execute as @n[tag=dummy] at @s as @a[tag=!dead,distance=..19] positioned ~ ~1.5 ~ facing entity @s eyes run function int:dummybehaviourhandler/raycast/start
# execute as @a[tag=seeDummyDirectly,tag=!i.encounteredDummy] run function int:events/173encounter

#escort path
#make second guard follow player, not path point
execute if score .status i matches 3 run data modify entity @n[tag=guard,tag=!ulgrin,tag=!musicguard] wander_target set from entity @p Pos
#if ulgrin near pathpoint 0, go to point 1 etc. ...
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint0,tag=!passed,distance=..3] run function int:path/goto1
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint1,tag=!passed,distance=..3] run function int:path/goto2
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint2,tag=!passed,distance=..3] run function int:path/goto3
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint3,tag=!passed,distance=..3] run function int:path/goto4
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint4,tag=!passed,distance=..3] run function int:path/goto5
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint5,tag=!passed,distance=..3] if entity @p[distance=..2] run function int:path/final
#rotation guards to the player while waiting him to exit the cell
execute if score .status i matches 2 run rotate @n[tag=ulgrin] facing entity @p eyes
execute if score .status i matches 2 run rotate @n[tag=ulgrinP] facing entity @p eyes
#constantly changing spawn point while guards moving in wscort proccess
execute if score .status i matches 3 at @n[tag=ulgrin] as @a run function save_progress:save {"sound":"none"}
#escorting subtick
execute if score .status i matches 3 run function int:path/subtick

#if !ulgrin is too far away from ulgrin, ulgrin stops (attribute?)
#if !ulgrin and ulgrin is too far away -> kill
#if player 


# timings
#init
execute if score .timer i matches 1 run function int:events/start

#cell open
execute if score .timer i = .dooropen.time i at @p as @n[tag=celldoor] run function animated_java:celldoor/animations/openclose/resume

#phrase 0
execute if score .timer i = .phrase0.time i if score .status i matches 1 at @n[tag=ulgrin] run function int:phrases/0

#phrase 1 - if player came close to ulgrin
execute at @n[tag=ulgrin] if entity @p[distance=..3] unless score .status i matches 3.. run function int:phrases/1

#exit refuse
execute if score .status i matches 2 if score .timer i = .exitrefuse.time i run playsound cb:i.ulgrin.exitrefuse ambient @a ~ ~ ~ 3 1 1

#gas valves
execute if score .status i matches 2 if score .timer i = .gas_chamber.time i run function int:events/gas_chamber

#gas
execute if score .status i matches 2 if score .timer i >= .gas.time i run function int:events/gas

#path
#go to point 0
execute if score .status i matches 3 if score .timer i = .goto0.time i run function int:path/goto0

#"Oh and by the way" in two last rooms
execute if score .status i matches 4 if score .timer i = .bythwway.time i run function int:events/bytheway

#paper in pre-last room
execute at @n[tag=ulgrin,tag=i.paper] run tag @a[distance=..2] add looking_on_door
execute at @n[tag=ulgrin,tag=i.paper] run tag @a[distance=..2] add canTakePaper

execute as @a[tag=canTakePaper,scores={door_right_click=1..}] at @s run function int:events/takepaper

#player entered last room marker triggered
execute at @n[tag=i.lastRoomPoint,tag=!passed] if entity @a[distance=..3] run function int:events/enteredlastroom

#enter containment chamber .1260
execute if score .status i matches 6 if score .timer i = .franklin.enter.time i run playsound cb:i.franklin.enterchamber ambient @a ~ ~100 ~ 100 1 1

#class-d approach in chamber handler .1300 - 1340
#0
execute as @n[tag=i.0] at @s if score .timer i > .cd0.approach.time i if score .timer i < .cd.approach.stop.time i if score .status i matches 6 run function int:path/d/forward
#1
execute as @n[tag=i.1] at @s if score .timer i > .cd1.approach.time i if score .timer i < .cd.approach.stop.time i if score .status i matches 6 run function int:path/d/forward
execute if score .timer i = .cd.approach.stop.time i if score .status i matches 6 run function int:path/d/final


#tesing process handler
execute if score .status i matches 7..8 run function int:events/testing/subtick

#breach process handler
execute if score .status i matches 9 run function int:events/breach/subtick


#game start - player tp, play full-breach sound, smoke particles etc.
execute if score .status i matches 10 if score .timer i = .darkness.time i run effect give @a minecraft:darkness infinite 1 true
execute if score .status i matches 10 if score .timer i = .final.time i run function int:events/startgame

#ambient
execute if score .ambient i matches 0 run function int:ambient