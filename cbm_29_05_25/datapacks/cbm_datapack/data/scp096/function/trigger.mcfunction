
tag @s remove triggering
tag @s add triggered
data modify entity @s NoAI set value 0b
scoreboard players operation @s anger_time = max* anger_time
playsound cb:scp096.chase ambient @p ~ ~ ~ 1 1 1

#say triggered

#playsound cb:scp096.triggered ambient @p ~ ~ ~ 1 1 1
