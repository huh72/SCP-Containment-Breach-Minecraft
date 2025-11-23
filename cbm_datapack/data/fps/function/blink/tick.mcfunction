scoreboard players remove @s[scores={blink_timer=1..}] blink_timer 1

execute if entity @s[scores={blink_timer=0}] run function fps:blink/blink
execute if entity @s[scores={jump=1..}] run function fps:blink/blink
scoreboard players set @s jump 0