scoreboard players add @s[scores={corpse.event=0..}] corpse.event 1

#g init
execute unless score @s corpse.event matches 0.. if entity @p[tag=!dead,distance=..9] run scoreboard players set @s corpse.event 0

#g play emerge sound
execute if score @s corpse.event matches 1 run playsound cb:scp106.emerge ambient @a[distance=..24] ~ ~5 ~ 1 1 1

#g play fall and horror sound
execute if score @s corpse.event = .fall corpse.event run function events:corpse/remove

#g sumon corpse
execute if score @s corpse.event = .spawn corpse.event positioned ~ ~6.5 ~ run function events:corpse/summon with storage cb:events

#g fall handler
execute as @e[tag=scientist_corpse.event] at @s if block ~ ~-0.1 ~ #events:air run tp @s ~ ~-0.1 ~
execute as @e[tag=scientist_corpse.event] at @s unless block ~ ~-0.075 ~ #events:air run tag @s remove scientist_corpse.event