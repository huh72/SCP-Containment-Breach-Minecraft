attribute @s minecraft:movement_speed modifier remove 8990-0-0-0-9

scoreboard players remove @s bleeding 6
execute if score @s bleeding matches ..0 run scoreboard players set @s bleeding 0

scoreboard players add @s health 90
execute if score @s health matches 101.. run scoreboard players set @s health 100

#g display message
execute if entity @s[scores={bleeding=0}] run function inventory:hotbar/set {"text":"'You feel much better."}
execute if entity @s[scores={bleeding=1..2}] run function inventory:hotbar/set {"text":"'You feel better, but you're still bleeding."}
execute if entity @s[scores={bleeding=3..}] run function inventory:hotbar/set {"text":"'You feel better, but the bleeding hasn't stopped."}

tag @s add can_ii
# say end!

