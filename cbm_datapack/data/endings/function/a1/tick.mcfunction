#timer
scoreboard players add .timer e 1
execute unless score .music.time e matches ..0 run scoreboard players remove .music.time e 1

#start ending
execute at @n[tag=aj.hid_turret.root] if score .timer e matches 1 run playsound cb:a1.escape106 ambient @a[distance=..96] ~ ~ ~ 1 1 1
execute as @e[tag=a1.mtfspawnpoint] at @s if score .timer e matches 1 run function mtf:spawn {"NoAI":"1","additionaltag":"surface","rotatedAs":"@n[tag=a1.mtfspawnpoint]"}
execute if score .timer e matches 1 run scoreboard players set .music.time e 1

#not hostile 106 appear event
execute if score .timer e = .106appear.time e run function endings:a1/events/106appear

#106 ending movement
execute as @n[tag=106origin] at @s if score 106 scp106state matches 1 run function endings:a1/movement106 {"walkspeed":"0.11"}

#stop 106's rotation
execute as @n[tag=106origin] at @s rotated ~0.75 ~ if score 106 scp106state matches 1 if score .timer e <= .106stopRotation.time e run tp @s ~ ~ ~ ~ ~
execute if score .timer e = .announc.time e run function endings:a1/events/announc

#make turret follow 106
execute at @n[tag=aj.hid_turret.root] if score 106 scp106state matches 1 run tp @n[tag=aj.hid_turret.root] ~ ~ ~ facing entity @n[tag=106origin] eyes
execute if score 106 scp106state matches 1 run data modify entity @n[tag=aj.hid_laser.root] Rotation set from entity @n[tag=aj.hid_turret.root] Rotation



#turret shoot prepare sound
execute at @n[tag=aj.hid_turret.root] if score .timer e = .hidShootPrepare.time e run playsound cb:a1.hidturret ambient @a[distance=..96] ~ ~ ~ 1 1 1

#turret shoot start
execute if score .timer e >= .hidShoot.time e if score .timer e <= .hidEndShoot.time e at @n[tag=aj.hid_turret.root] run tp @n[tag=aj.hid_laser.root] ^ ^0.6 ^3

#turret shoot end
execute if score .timer e = .hidEndShoot.time e at @n[tag=aj.hid_turret.root] run tp @n[tag=aj.hid_laser.root] ~ ~-64 ~

#flash particles
execute at @n[tag=106origin] if score .timer e > .hidShoot.time e if score .timer e < .hidEndShoot.time e run particle minecraft:flash ~ ~1 ~ 0.25 0.25 0.25 0 1 force
execute at @n[tag=aj.hid_laser.root] if score .timer e > .hidShoot.time e if score .timer e < .hidEndShoot.time e run particle minecraft:flash ^ ^ ^4 0.25 0.25 0.25 0 1 force

#106 retreat timewhen turret stops shooting
execute if score .timer e = .hidEndShoot.time e at @n[tag=106origin] run function endings:a1/events/106retreat
execute if score .timer e = .hidEndShoot.time e as @e[tag=mtf,tag=surface] run function mtf:switchhostility {"s":"@s"}
execute if score .timer e = .hidEndShoot.time e as @e[tag=mtf,tag=surface] run data modify entity @s wander_target set from entity @p[tag=!dead] Pos

#repeating music handler
execute if score .music.time e matches 0 run function endings:a1/music

# final ending scene handler
execute as @a[scores={gameend=0..}] run function endings:a1/end/tick

#spawn ci solders
execute at @n[tag=a1.endingpoint] as @a[distance=..1.25,tag=!dead,scores={gameend=-1}] run function endings:a1/end/cispawn
