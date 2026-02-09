#timer up
scoreboard players add .timer.sound i 1

#sound timings
execute if score .timer.sound i = .ab.sound0 i run playsound cb:start.breach.sound0 ambient @a ~ ~ ~ 0.8 1 1
execute if score .timer.sound i = .ab.sound0 i run say 0
execute if score .timer.sound i = .ab.sound1 i run playsound cb:start.breach.sound1 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound1 i run say 1
execute if score .timer.sound i = .ab.sound2 i run playsound cb:start.breach.sound2 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound2 i run say 2
execute if score .timer.sound i = .ab.sound3 i run playsound cb:start.breach.sound3 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound3 i run say 3
execute if score .timer.sound i = .ab.sound4 i run playsound cb:start.breach.sound4 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound4 i run say 4
execute if score .timer.sound i = .ab.sound5 i run playsound cb:start.breach.sound5 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound5 i run say 5
execute if score .timer.sound i = .ab.sound6 i run playsound cb:start.breach.sound6 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound6 i run say 6
execute if score .timer.sound i = .ab.sound7 i run playsound cb:start.breach.sound7 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound7 i run say 7
execute if score .timer.sound i = .ab.sound8 i run playsound cb:start.breach.sound8 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound8 i run say 8
execute if score .timer.sound i = .ab.sound9 i run playsound cb:start.breach.sound9 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound9 i run say 9
execute if score .timer.sound i = .ab.sound10 i run playsound cb:start.breach.sound10 ambient @a ~ ~ ~ 0.4 1 1
execute if score .timer.sound i = .ab.sound10 i run say 10

execute if score .timer.sound i = .ab.sound10 i run scoreboard players set .status i -1

#particle from vent in start location
execute at @e[tag=p.smokeup] run particle minecraft:campfire_cosy_smoke ~ ~0.25 ~ 0.1 0.35 0.1 0.015 4