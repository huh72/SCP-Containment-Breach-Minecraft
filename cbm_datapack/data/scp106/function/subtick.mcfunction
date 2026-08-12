# spawn -> first 30 seconds - active chasing, next - passive chasing
#active chasing - tries to kill every one in facility,if no players in 48 blocks radius - disappear and appear near most low-hp player, priority - low-hp player
#passive chasing - if no players in 64 blocks radius - dissapear, if makes kill - disappear, if made kill during active phase - dissapear, after +90 seconds - dissapear

#chasing in general:
#106 looks at player direction, per tick - RotY = 0
#
#

#well...

#vars
execute if score 106 106hit_cd matches 1.. run scoreboard players remove 106 106hit_cd 1
execute if score 106 laugh_cd matches 1.. run scoreboard players remove 106 laugh_cd 1
execute if score 106 breath_cd matches 1.. run scoreboard players remove 106 breath_cd 1
execute if score 106 chasetheme_cd matches 1.. run scoreboard players remove 106 chasetheme_cd 1
execute if score 106 scp106state matches 1..2 run scoreboard players add 106 hunting 1


#appear handle
execute unless score 106 appear_timer matches -1 run function scp106:appear/loop
#disappear handle
execute unless score 106 disappear_timer matches -1 run function scp106:disappear/loop

#movement + model lineup
execute if score 106 scp106state matches 1 if entity @s[tag=!a1.ending] run function scp106:movement {"walkspeed":"0.215"}
execute if score 106 scp106state matches 2 if entity @s[tag=!a1.ending] run function scp106:movement {"walkspeed":"0.1975"}

#defining targets
execute if score 106 scp106state matches 1..2 if entity @s[tag=!a1.ending] run function scp106:definetarget/0

#change hunt state (active -> passive (if no kills))
execute if score 106 hunting = max_a hunting run function scp106:changestate

#chase end conditions
execute if score 106 hunting = max_p hunting run function scp106:despawn
execute if score 106 scp106state matches 1 run function scp106:chasing/activechasingphasehandler
execute if score 106 scp106state matches 2 run function scp106:chasing/secondphasedisappearconditionshandler
execute if entity @s[tag=reappearing] run function scp106:chasing/handler


#laugh + breath sounds
execute if score 106 chasetheme_cd matches 0 if score 106 scp106state matches 1..2 if entity @s[tag=!a1.ending] run function scp106:sounds/chasetheme
execute if score 106 laugh_cd matches 0 run function scp106:sounds/laugh
execute if score 106 breath_cd matches 0 run function scp106:sounds/breath

#hit + caught animation
execute positioned ^ ^ ^0.5 as @p[tag=106target,distance=..1] if score 106 106hit_cd matches 0 run function scp106:hit/hit
execute as @a[tag=hitby106] at @s if score @s fallinpdanimation < max fallinpdanimation run function scp106:hit/fallanimation




# execute as @e[type=minecraft:armor_stand,tag=ps] at @s store result storage minecraft:pd_shrink scale int 1 run scoreboard players get @s pd_shrink_scale
# execute as @e[type=minecraft:armor_stand,tag=ps] at @s if score @s pd_shrink_scale < max pd_shrink_scale run function scp106:pd_shrink/resize with storage minecraft:pd_shrink
