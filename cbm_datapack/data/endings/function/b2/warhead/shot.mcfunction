stopsound @a ambient cb:b1.music
playsound cb:b2.shot ambient @a ~ ~100 ~ 100 1 1

execute as @a[tag=!dead] at @s run scoreboard players set @s health 0

#black screen
scoreboard players set @a blink_timer -1
title @a times 10t 100000t 1t
# title @a subtitle {"text":"\uE003"}
tag @a remove can_blink