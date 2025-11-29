playsound cb:interact.card_denied ambient @a ~ ~ ~ 2 1 1
title @p actionbar "Keycard was inserted into the slot, but nothing happened."

scoreboard players operation @n[tag=door_marker,distance=..4] card_interact_cd = max card_interact_cd
scoreboard players operation @n[tag=door_marker_checkpoint,distance=..4] card_interact_cd = max card_interact_cd