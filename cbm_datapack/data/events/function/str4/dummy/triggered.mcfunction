scoreboard players set 106 appear_timer -1
scoreboard players set 106 scp106state 1
scoreboard players set 106 hunting 1
scoreboard players set 106 breath_cd 0
scoreboard players set 106 laugh_cd 20
scoreboard players set 106 chasetheme_cd 0

# say triggered!

scoreboard players set @e[tag=str4.event] event.str4.dummylifetime 91
tag @e[tag=str4.event] add encountered

tag @a[tag=!dead] add 106target