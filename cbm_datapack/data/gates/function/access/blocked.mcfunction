function inventory:hotbar/set {"text":"'The gate appeats to be locked."}

playsound cb:interact.card_denied ambient @s ~ ~1 ~ 1 1 1
playsound cb:interact.card_denied ambient @a[distance=..10] ~ ~1 ~ 0.66 1 1

scoreboard players operation @s card_interact_cd = max card_interact_cd