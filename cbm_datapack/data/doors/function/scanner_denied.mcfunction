playsound cb:interact.scanner_denied ambient @a[distance=..24] ~ ~ ~ 5 1 1
title @p actionbar "%scanner.denied.message%"

scoreboard players operation @p[tag=close_to_door] card_interact_cd = max card_interact_cd
scoreboard players operation @n[tag=sc,distance=..4] card_interact_cd = max card_interact_cd