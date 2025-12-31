playsound cb:i.music ambient @a ~ ~ ~ 0.45 1 1
scoreboard players operation .ambient i = .ambient.max i

attribute @a minecraft:jump_strength base set 0

scoreboard players set @a blink_timer -99
tag @a remove can_blink