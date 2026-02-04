stopsound @a ambient cb:b1.music
playsound cb:b1.nuke_explosion ambient @a ~ ~100 ~ 10 1 1
#black screen
scoreboard players set @a blink_timer -1
title @a times 10t 100000t 1t
title @a subtitle {"text":"\uE003"}
tag @a remove can_blink