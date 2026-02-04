#detect if all players inside the chamber
# execute at @n[tag=i.inGateDetector] if score .status i matches 7 run function int:events/testing/inchamberdetect
#and run the function
execute if entity @a[scores={v=2},tag=!dead] if score .status i matches 7 run function int:events/testing/start

#approach... timing
execute if score .timer i = .approach.sound.time i run playsound cb:i.franklin.approach ambient @a ~ ~100 ~ 100 1 1

#gate re-open 
execute if score .timer i = .gate.open.time i at @n[tag=i.lastRoomPoint] as @n[tag=gate] run function animated_java:gate/animations/openclosetoggle/play

#stop cd0 approach and play breach sound
execute as @n[tag=i.0] at @s if score .timer i > .cd0.approach2.time i if score .timer i < .cd0.approach2.stop.time i if score .status i matches 8 run function int:path/d/forward
execute if score .timer i = .cd0.approach2.stop.time i if score .status i matches 8 run function int:events/testing/pre_breach

#"i dont like this" phrase
execute if score .timer i = .cd0.phrase0.time i if score .status i matches 8 run playsound cb:i.classd0 ambient @a ~ ~ ~ 100 1 1

#SCP-173 scripted moves
execute if score .timer i = .173move0.time i if score .status i matches 8 as @a run function int:events/breach/blink0
execute if score .timer i = .173move1.time i if score .status i matches 8 as @a run function int:events/breach/blink1
execute if score .timer i = .173move2.time i if score .status i matches 8 as @a run function int:events/breach/blink2
# execute if score .timer i >= .final.time i if score .status i matches 10 run function int:events/breach/blink3