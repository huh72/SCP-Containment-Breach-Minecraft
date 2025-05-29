#sound + pos
playsound cb:tesla.shock ambient @a[distance=..16] ~ ~2 ~ 1 1 1

#shock effect
execute if entity @s[tag=0] run summon block_display ~ ~ ~ {Tags:['tesla_shock'],block_state:{Name:"minecraft:light_blue_stained_glass",Properties:{}},transformation:[0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,6.0000f,0.0000f,0.0000f,0.0000f,0.0000f,6.0000f,-3.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Rotation:[90f,0f]}
execute if entity @s[tag=1] run summon block_display ~ ~ ~ {Tags:['tesla_shock'],block_state:{Name:"minecraft:light_blue_stained_glass",Properties:{}},transformation:[0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,6.0000f,0.0000f,0.0000f,0.0000f,0.0000f,6.0000f,-3.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

#vars
scoreboard players operation @s tesla_shock_timer = max* tesla_shock_timer
scoreboard players operation @s tesla_shock_cd = max* tesla_shock_cd