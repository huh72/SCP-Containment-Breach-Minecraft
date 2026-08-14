playsound cb:annouc.173 ambient @a ~ ~1000000 ~ 100000 1 1
scoreboard players set .173 isContained 1

execute at @n[tag=scp173] run tp @n[tag=mtf] ~ ~1 ~
function scp173:despawn
function scp173:contain