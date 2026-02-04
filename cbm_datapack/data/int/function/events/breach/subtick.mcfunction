# #reset previous values first
scoreboard players set .playerLookingOn173 v 0
scoreboard players set .playerLookingByX v 0
scoreboard players set .playerLookingByY v 0

execute as @n[tag=dummy] at @s run function int:dummybehaviourhandler/subtick
execute if score .playerLookingOn173 v matches 0 at @n[tag=dummy,tag=ai] as @p[tag=seeDummyDirectly,tag=!dead] run function int:dummybehaviourhandler/kill
execute if score .playerLookingOn173 v matches 0 at @n[tag=dummy,tag=ai] as @p[tag=seeDummyDirectly,tag=!dead,tag=blink] run function int:dummybehaviourhandler/kill

scoreboard players set @a v 0
execute at @n[tag=i.inGateDetector] run function int:events/testing/inchamberdetect0
execute at @n[tag=i.inGateDetector] run function int:events/testing/inchamberdetect1


execute if entity @a[scores={v=0}] run function int:events/breach/blink3