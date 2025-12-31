scoreboard players operation @s[tag=can_blink] blink_timer = max blink_timer
tag @s add blink

# REQUEST -> TITLE
# title @s[tag=!dev] times 2t 2t 2t
# title @s[tag=!dev] title {"text":"\uE003"}
execute as @s[tag=can_blink] run function ui:title {"fadein":"2","time":"2","fadeout":"2","maintext":"uE003","requestcd":"4"}