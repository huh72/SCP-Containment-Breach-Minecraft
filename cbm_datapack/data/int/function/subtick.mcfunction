#timers
scoreboard players add .timer i 1
scoreboard players remove .ambient i 1

#path
#make second guard follow player, not path point
execute if score .status i matches 3 run data modify entity @n[tag=guard,tag=!ulgrin] wander_target set from entity @p Pos
#if ulgrin near pathpoint 0, go to point 1 etc.
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint0,tag=!passed,distance=..3] run function int:path/goto1
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint1,tag=!passed,distance=..3] run function int:path/goto2
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint2,tag=!passed,distance=..3] run function int:path/goto3
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint3,tag=!passed,distance=..3] run function int:path/goto4
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint4,tag=!passed,distance=..3] run function int:path/goto5
execute at @n[tag=ulgrin] if entity @n[tag=i.pathpoint5,tag=!passed,distance=..3] run function int:path/final


# timings
#init
execute if score .timer i matches 1 run function int:events/start

#cell open
execute if score .timer i = .dooropen.time i at @p as @n[tag=celldoor] run function animated_java:celldoor/animations/openclose/resume

#phrase 0
execute if score .timer i = .phrase0.time i if score .status i matches 1 at @n[tag=ulgrin] run function int:phrases/0

#phrase 1 - if player came close to ulgrin
execute at @n[tag=ulgrin] if entity @p[distance=..3] unless score .status i matches 3.. run function int:phrases/1

#go to point 0
execute if score .status i matches 3 if score .timer i = .goto0.time i run function int:path/goto0


#"Oh and by the way" in two last rooms
execute if score .status i matches 4 if score .timer i = .bythwway.time i run function int:events/bytheway


#ambient
execute if score .ambient i matches 0 run function int:ambient