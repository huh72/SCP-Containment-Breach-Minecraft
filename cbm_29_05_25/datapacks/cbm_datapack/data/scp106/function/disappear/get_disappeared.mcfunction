scoreboard players set 106 disappear_timer -1
tag @e[tag=scp106] remove hunting
# say disappeared completely!
scoreboard players set @s hunting 0
stopsound @a ambient cb:scp106.chase
scoreboard players set 106 breath_cd 10000