#close door, open gate, and time = 1200

tag @n[tag=i.lastRoomPoint] add passed

scoreboard players set .status i 6
scoreboard players operation .timer i = 1200 i
execute at @n[tag=i.lastRoomPoint] as @n[tag=gate] run function animated_java:gate/animations/openclosetoggle/play
execute at @n[tag=i.door1] as @n[tag=aj.door0.root] run function animated_java:door0/animations/openclosetoggle/resume

execute at @n[tag=i.173spawnpoint] run function scp173:spawndummy

function int:events/spawnclassd

#spawn 173's shit
execute at @n[tag=i.inGateDetector] run summon item_display ~-1.25 ~0.6 ~-4.5 {Rotation:[-20f,0f],Tags:['i.tp','i.decal'],item:{id:"paper",components:{item_model:"cb:intro/173shit0"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute at @n[tag=i.inGateDetector] run summon item_display ~-3 ~0.6 ~2.5 {Rotation:[60f,0f],Tags:['i.tp','i.decal'],item:{id:"paper",components:{item_model:"cb:intro/173shit1"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute at @n[tag=i.inGateDetector] run summon item_display ~3.8 ~0.6 ~1 {Rotation:[120f,0f],Tags:['i.tp','i.decal'],item:{id:"paper",components:{item_model:"cb:intro/173shit2"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}

stopsound @a * cb:i.music
scoreboard players set .ambient i -1
playsound cb:zone1.mainambient ambient @a ~ ~ ~ 0.5 1 1