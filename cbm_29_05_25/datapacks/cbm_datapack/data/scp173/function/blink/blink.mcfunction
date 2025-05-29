
scoreboard players set @s blink 1
# title @s times 2 2 2
# title @s[tag=!dev,tag=!dead] title {"text":"\uE003"}
#item replace entity @s armor.head with carved_pumpkin
scoreboard players set @s jump 0
scoreboard players operation @s blink_long = const* blink_long
scoreboard players set @s no_blink_long 0
# say blink!