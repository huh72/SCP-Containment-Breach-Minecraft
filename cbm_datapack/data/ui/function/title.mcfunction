title @s[tag=!dead] times 0t 20t 0t

#handle requests
$title @s[tag=!dead] times $(fadein)t $(time)t $(fadeout)t
$title @s title {"text":"\$(maintext)","shadow_color":0}
$scoreboard players set @s request_cd $(requestcd)