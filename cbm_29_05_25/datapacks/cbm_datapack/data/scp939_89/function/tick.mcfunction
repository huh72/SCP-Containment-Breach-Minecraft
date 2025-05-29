
scoreboard players remove @e[tag=scp939_89,scores={hit_cd=1..}] hit_cd 1
scoreboard players remove @e[tag=scp939_89,scores={phrase_cd=1..}] phrase_cd 1
scoreboard players remove @e[tag=scp939_89,scores={alert_cd=1..}] alert_cd 1
#scoreboard players remove @a[scores={slow_long=1..}] slow_long 1

execute as @e[tag=scp939_89] at @s run tp @e[tag=caster939_89] ~ ~2 ~ facing entity @p eyes
execute as @e[tag=caster939_89] at @s run function scp939_89:cast/to_player


execute as @a[scores={walk=1..}] at @s if entity @e[tag=scp939_89,distance=..14] if score player_can_see_939_89* var matches 1 run function scp939_89:spot
execute as @a at @s if entity @e[tag=scp939_89,distance=15..] run function scp939_89:unspot
scoreboard players set @a walk 0

execute as @e[tag=scp939_89,scores={phrase_cd=0}] at @s run function scp939_89:lure
execute as @e[tag=scp939_89,scores={alert_cd=0}] at @s if entity @p[distance=..8] run function scp939_89:alert

execute as @e[tag=scp939_89,scores={hit_cd=0}] at @s if entity @p[distance=..2.5] run function scp939_89:hit
#attribute @p[scores={slow_long=0}] generic.movement_speed modifier remove 1488-0-0-0-2
