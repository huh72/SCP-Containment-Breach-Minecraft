playsound cb:interact.card_denied ambient @a[distance=..24] ~ ~ ~ 2 1 1
execute as @p[scores={door_right_click=1}] run function inventory:hotbar/set {"text":"'Keycard was inserted into the slot, but nothing happened."}

scoreboard players operation @p[tag=close_to_door] card_interact_cd = max card_interact_cd
scoreboard players operation @n[tag=door_marker_checkpoint,distance=..4] card_interact_cd = max card_interact_cd