playsound cb:m4a1s.draw record @s[tag=!reloading] ~ ~ ~ 0.4 1 1
tag @s add drawed
#re-reload
execute if score @s reload matches -1 run function guns:weapons/tmp/reload/start