
summon zombie ~ ~ ~ {Tags:['scp0492'],Invulnerable:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1}],attributes:[{id:"generic.movement_speed",base:0.15f}]}
scoreboard players set @e[tag=scp0492] breath 1
scoreboard players operation @e[tag=scp0492,limit=1] hit_cd = max* hit_cd
effect give @e[tag=scp0492] weakness infinite 100 true