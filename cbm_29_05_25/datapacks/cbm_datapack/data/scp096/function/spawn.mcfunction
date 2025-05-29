
summon husk ^ ^5 ^-5 {Tags:['scp096'],Invulnerable:1b,Silent:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1}]}
scoreboard players operation @e[tag=scp096,limit=1] scream_timer = max* scream_timer
#scoreboard players operation @e[tag=scp096,limit=1] anger_time = max* anger_time
#scoreboard players operation @e[tag=scp096,limit=1] triggering_time = max* triggering_time
attribute @e[tag=scp096,limit=1] generic.knockback_resistance base set 100
attribute @e[tag=scp096,limit=1] generic.follow_range base set 128
attribute @e[tag=scp096,limit=1] generic.movement_speed base set 0.5
summon marker ~ ~ ~ {Tags:["096caster"]}
summon marker ~ ~ ~ {Tags:["caster096"]}