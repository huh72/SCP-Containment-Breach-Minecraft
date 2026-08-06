playsound cb:interact.card_denied ambient @s ~ ~1 ~ 1 1 1
playsound cb:interact.card_denied ambient @a[distance=..10] ~ ~1 ~ 0.66 1 1

tellraw @s "access level is too low"

scoreboard players operation @s card_interact_cd = max card_interact_cd