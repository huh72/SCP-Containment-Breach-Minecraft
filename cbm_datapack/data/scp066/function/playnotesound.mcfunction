scoreboard players operation @s touchCountCdScp066 = Max touchCountCdScp066
scoreboard players add @s touchCountScp066 1

execute if score @s touchCountScp066 matches 1 run playsound cb:scp066.notes6 ambient @a[distance=..32] ~ ~1 ~ 1 1 1
execute if score @s touchCountScp066 matches 2 run playsound cb:scp066.notes5 ambient @a[distance=..32] ~ ~1 ~ 1 1 1
execute if score @s touchCountScp066 matches 3 run playsound cb:scp066.notes4 ambient @a[distance=..32] ~ ~1 ~ 1 1 1
execute if score @s touchCountScp066 matches 4 run playsound cb:scp066.notes3 ambient @a[distance=..32] ~ ~1 ~ 1 1 1
execute if score @s touchCountScp066 matches 5 run playsound cb:scp066.notes2 ambient @a[distance=..32] ~ ~1 ~ 1 1 1
execute if score @s touchCountScp066 matches 6 run playsound cb:scp066.notes1 ambient @a[distance=..32] ~ ~1 ~ 1 1 1
#playing notes sound have a 10% chance to hit the player
execute as @s at @s if predicate scp066:10 run function scp066:hitplayer {"damage":"10"}

execute if score @s touchCountScp066 matches 7 run function scp066:playbeethovensound