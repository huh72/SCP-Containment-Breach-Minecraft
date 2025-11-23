#vars
scoreboard players remove @s[scores={breath_cd=1..}] breath_cd 1
scoreboard players remove @s[scores={beep_cd=1..}] beep_cd 1

###player detect const on near distance
#different spot levels - 0-4?
# playsound cb:mtf.searching ambient @a ~ ~ ~ 2 1 1
# lvl0 - первый детект игрока - 14 блоков - classddetected
# lvl1 - 8 блоков - searching
# kill - terminated

#v1
#get player distance
# tag @a remove detectedbymtf0

# tag @a[distance=..14] add detectedbymtf0
# tag @a[distance=..8] add detectedbymtf1

# tag @a[tag=!detectedbymtf0] remove detectedbymtf1

# #and play sound
# execute if entity @p[tag=detectedbymtf0,tag=!sounded] run playsound cb:mtf.classdspotted ambient @a ~ ~ ~ 2 1 1
# execute if entity @p[tag=detectedbymtf1,tag=!sounded] run playsound cb:mtf.searching ambient @a ~ ~ ~ 2 1 1
# tag @a[tag=detectedbymtf0] add sounded
# tag @a[tag=detectedbymtf1] add sounded

# tag @a[tag=!detectedbymtf0] remove sounded
# tag @a[tag=!detectedbymtf1] remove sounded

#v2
# tag @p[distance=14..32] remove detected_by_mtf
# execute if entity @p[distance=..14,tag=!detected_by_mtf] run playsound cb:mtf.classdspotted ambient @a ~ ~ ~ 2 1 1
# tag @p[distance=..14] add detected_by_mtf

tp @s ~ ~ ~ facing entity @n[tag=scp049_2,distance=..12]
execute if entity @n[tag=scp049_2,distance=..8] store result storage gun_main damage int 1 run random value 20..50 cb:bulletdamage049_2
execute if entity @n[tag=scp049_2,distance=..12] store result storage gun_main shot_cd int 1 run scoreboard players get shot_cd stat_m4a1s
execute if entity @n[tag=scp049_2,distance=..8] anchored eyes rotated ~ ~4.5 run function guns:shoot with storage minecraft:gun_main

execute if entity @s[predicate=mtf_sb:idle,tag=!idle] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/idle/play
execute if entity @s[predicate=mtf_sb:idle,tag=!idle] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/walk/stop

execute if entity @s[predicate=mtf_sb:walk,tag=!walk] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/idle/stop
execute if entity @s[predicate=mtf_sb:walk,tag=!walk] as @n[tag=aj.mtf.root] run function animated_java:mtf/animations/walk/play

tag @s add idle
tag @s add walk

tag @s[predicate=!mtf_sb:idle] remove idle
tag @s[predicate=!mtf_sb:walk] remove walk

#tp model
tp @n[tag=aj.mtf.root] ~ ~ ~
data modify entity @n[tag=aj.mtf.root] Rotation[0] set from entity @s Rotation[0]


### sounds (step + beep + breath)
#breath sound
execute if score @s breath_cd matches 0 run function mtf_sb:breath
stopsound @a[distance=12..] ambient cb:mtf.breath
#beep sound
execute if score @s beep_cd matches 0 run function mtf_sb:beep
#step sound + move detect
execute if entity @s[tag=!move_checked] run function mtf_sb:ms/move_check
scoreboard players add @s[predicate=ms:walk_mtf] mtf_step 1
execute if score @s mtf_step >= step* mtf_step unless block ~ ~-0.4 ~ air run function mtf_sb:ms/step
tag @s remove move_checked
tag @s remove moved

#kill func
execute if score @s health matches ..0 run function mtf_sb:despawn
