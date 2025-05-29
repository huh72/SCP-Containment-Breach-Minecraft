
summon ravager ~ ~ ~ {Tags:['scp939_53','scp939'],Invulnerable:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1}]}
summon marker ~ ~ ~ {Tags:['caster939_53']}
effect give @e[tag=scp939_53] weakness infinite 100 true
attribute @e[tag=scp939,limit=1] minecraft:generic.follow_range base set 16
attribute @e[tag=scp939,limit=1] minecraft:generic.movement_speed base set 0.15
scoreboard players operation @e[tag=scp939_53] hit_cd = max* hit_cd
scoreboard players operation @e[tag=scp939_53] phrase_cd = max* phrase_cd
scoreboard players operation @e[tag=scp939_53] alert_cd = max* alert_cd


#scoreboard players set @e[tag=scp0492] breath 1
#scoreboard players operation @e[tag=scp0492,limit=1] hit_cd = max* hit_cd
#effect give @e[tag=scp0492] weakness infinite 100 true