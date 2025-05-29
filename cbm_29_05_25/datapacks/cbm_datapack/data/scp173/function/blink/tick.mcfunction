
# blink by player
scoreboard players set @a[scores={blink_long=1..}] jump 0
scoreboard players remove @a[scores={blink_long=1..}] blink_long 1

execute as @a[scores={jump=1..}] at @s run function scp173:blink/blink
execute as @a[scores={jump=0,blink_long=0}] at @s run function scp173:blink/clear

execute as @a[tag=player] at @s run function scp173:blink/ui_temp

# blink by game
execute as @a if score @s no_blink_long < max* no_blink_long run scoreboard players add @s no_blink_long 1
execute as @a if score @s no_blink_long = max* no_blink_long run function scp173:blink/blink