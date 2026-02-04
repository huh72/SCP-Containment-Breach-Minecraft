#tag
tag @s add i.encounteredDummy

#blinking
scoreboard players set @s blink_timer 230
tag @s add can_blink
#
attribute @s minecraft:jump_strength base set 0.004

title @s actionbar {"text":"Press _button_ to blink."}

#sound
playsound cb:i.173encounter ambient @s ~ ~ ~ 100 1 1