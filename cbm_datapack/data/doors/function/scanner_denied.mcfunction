playsound cb:interact.scanner_denied ambient @a[distance=..24] ~ ~ ~ 5 1 1
execute as @p[scores={door_right_click=1..}] run function inventory:hotbar/set {"text":"'Fingerprint doesn't match."}

scoreboard players operation @p[tag=close_to_door] card_interact_cd = max card_interact_cd
scoreboard players operation @n[tag=sc,distance=..4] card_interact_cd = max card_interact_cd