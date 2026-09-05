tp @n[tag=aj.scp096.root] ~ ~ ~
data modify entity @n[tag=aj.scp096.root] Rotation[0] set from entity @s Rotation[0]

#
execute if entity @s[tag=idle,tag=!readyToBeTriggered] run scoreboard players add 096 rageCycle 1
execute if entity @s[tag=triggered,tag=!raged] run scoreboard players add 096 rageCycle 1
execute if entity @s[tag=raged] run scoreboard players add 096 rageCycle 1


execute if score 096 rageCycle = .rageCD rageCycle run tag @s add readyToBeTriggered
execute if score 096 rageCycle = .triggerTime rageCycle run function scp096:setstate/rage
execute if score 096 rageCycle = .timeToTP rageCycle run function scp096:tptoplayer
execute if score 096 rageCycle = .maxHuntTime rageCycle run function scp096:setstate/unrage

execute if entity @s[tag=raged] as @a[tag=!dead] if entity @s[tag=!triggered096] run function scp096:setstate/unrage

#g kill
execute if entity @s[tag=raged] as @a[tag=!dead, distance=..2] at @s run function scp096:kill