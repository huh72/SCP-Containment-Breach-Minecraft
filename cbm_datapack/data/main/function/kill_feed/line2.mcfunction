bossbar set l2 visible true
$bossbar set l2 name [{"text":"                                                                                                  "},{"selector":"@s"},{"text":"$(text)"}]
scoreboard players operation l2 line_dur = max line_dur
function main:kill_feed/remove_tags
say line 2