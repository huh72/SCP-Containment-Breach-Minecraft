playsound cb:a1.cifinal ambient @s ~ ~ ~ 1 1 1
scoreboard players set @s shader.brightness 0

#g black screen
scoreboard players set @s blink_timer -1
title @s times 10t 100000t 1t
title @s subtitle {"text":"\uE003"}
tag @s remove can_blink