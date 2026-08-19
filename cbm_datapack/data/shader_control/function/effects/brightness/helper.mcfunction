execute if score @s shader.brightness matches 100.. run scoreboard players set @s shader.brightness 99
execute store result storage cb:shader value int 1 run scoreboard players get @s shader.brightness

function shader_control:effects/brightness/set with storage cb:shader