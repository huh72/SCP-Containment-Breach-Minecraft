#subtick - @s
execute as @e[type=zombified_piglin,tag=mtf] at @s run function mtf_sb:subtick

#subtick - player
execute as @a[tag=!dead] at @s run function mtf_sb:subtick_player

### player detecting
#player detect cast
execute as @e[type=zombified_piglin,tag=mtf] at @s if entity @p[distance=..21,tag=!dead] anchored eyes rotated ~ ~2.25 run function mtf_sb:target_on_sight/cast


# detecting target and shot + guns stuff
scoreboard players set @a[tag=!seen] player_seen 0
###gun stuff
execute store result storage gun_main blood_lost int 1 run random value 0..2 cb:bloodlost
execute store result storage gun_main damage int 1 run random value 0..31 cb:bulletdamage
execute store result storage gun_main xa int 1 run random value 0..9 cb:acc
execute store result storage gun_main ya int 1 run random value 0..9 cb:acc
execute store result storage gun_main shot_cd int 1 run scoreboard players get shot_cd stat_m4a1s
execute as @e[tag=player_on_sight] at @s if score @p[tag=seen,tag=!dead] player_seen >= max player_seen if score @s shot_cd matches 0 anchored eyes rotated ~ ~4.5 run function guns:shoot with storage minecraft:gun_main
###
execute if entity @a[tag=seen] as @e[tag=player_on_sight] at @s run function mtf_sb:spy_after
tag @e remove player_on_sight
tag @a remove seen



#vars - do not put next line in subtick.mcfunction!
scoreboard players remove @e[type=zombified_piglin,tag=mtf,scores={shot_cd=1..}] shot_cd 1
