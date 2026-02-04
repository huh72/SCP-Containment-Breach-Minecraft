#close door, open gate, and time = 1200

tag @n[tag=i.lastRoomPoint] add passed

scoreboard players set .status i 6
scoreboard players operation .timer i = 1200 i
execute at @n[tag=i.lastRoomPoint] as @n[tag=gate] run function animated_java:gate/animations/openclosetoggle/play
execute at @n[tag=i.door1] as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume

execute at @n[tag=i.173spawnpoint] run function scp173:spawndummy

function int:events/spawnclassd

stopsound @a * cb:i.music
scoreboard players set .ambient i -1
playsound cb:zone1.mainambient ambient @a ~ ~ ~ 0.5 1 1