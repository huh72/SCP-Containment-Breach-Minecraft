playsound cb:scp049.lightson ambient @a ~ ~ ~ 1 1 1

function scp049:despawn
execute at @n[tag=door, tag=card] positioned ~ ~ ~-2 run function scp049:spawn

tag @n[tag=elc.primaryLighting] add uninteractibale
tag @n[tag=elc.secondaryLighting] add uninteractibale

scoreboard players set @a shader.brightness 50

scoreboard players set .state event.079 2

say lighton!