playsound cb:scp372.rustle ambient @a[distance=..15] ~ ~0.5 ~ 1.75 1 1
tag @s remove flying
tp @s ~ ~25 ~

execute store result score .random scp372.appearTimer run random value 0..3 cb:scp372.random

execute if score .random scp372.appearTimer matches 0 run scoreboard players operation @s scp372.appearTimer = .0 scp372.appearTimer
execute if score .random scp372.appearTimer matches 1 run scoreboard players operation @s scp372.appearTimer = .1 scp372.appearTimer
execute if score .random scp372.appearTimer matches 2 run scoreboard players operation @s scp372.appearTimer = .2 scp372.appearTimer
execute if score .random scp372.appearTimer matches 3 run scoreboard players operation @s scp372.appearTimer = .3 scp372.appearTimer

tag @a remove scp372.target
tag @e remove spotedPlayer

scoreboard players set .temp scp372.playerSpotTimer 0