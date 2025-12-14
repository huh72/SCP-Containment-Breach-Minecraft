scoreboard players remove @s[scores={event3timer=-59..}] event3timer 1
 
execute if entity @a[tag=!dead,distance=..1] if entity @s[tag=!proceed,scores={event3timer=-60}] run function animated_java:airlockdoors/animations/openclosetoggle/resume

execute if entity @s[scores={event3timer=0}] run function animated_java:airlockdoors/animations/openclosetoggle/play