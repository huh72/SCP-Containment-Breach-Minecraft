#timer
scoreboard players add .timer e 1
execute if score .music.time e matches 1.. run scoreboard players remove .music.time e 1
execute if score .682battle.time e matches 1.. run scoreboard players remove .682battle.time e 1
execute if score .alphawarhead.time e matches 0.. run scoreboard players add .alphawarhead.time e 1

#init ending
execute if score .timer e matches 1 run function endings:b1/init

#repeating musics handler
execute if score .music.time e matches 0 run function endings:b1/music
execute if score .music.time e matches 1000 run function endings:b1/music2

#change music theme handler
execute as @a[tag=!b1.themechanged] at @s if entity @n[tag=b1.changethemepoint,distance=..2] run function endings:b1/changetheme

#682 battle sound handler
execute as @a[tag=!b1.battle682soundplayed] at @s if entity @n[tag=b1.682soundpoint,distance=..1] run function endings:b1/682battle

#alpha warhead handler
execute as @a at @s if score .alphawarhead.status e matches -1 if score .682battle.time e matches 0 if entity @n[tag=b1.warheadtriggerpoint,distance=..8] run function endings:b1/warhead/start

#alpha warheads timings
execute if score .alphawarhead.time e = .alphawarhead.time.siren e at @a run playsound cb:b1.siren ambient @a ~ ~100 ~ 100 1 1
execute if score .alphawarhead.time e = .alphawarhead.time.fail e at @a run function endings:b2/warhead/fail
execute if score .alphawarhead.time e = .alphawarhead.time.shot e at @a run function endings:b2/warhead/shot