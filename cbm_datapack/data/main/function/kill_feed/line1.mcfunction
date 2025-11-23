bossbar set l1 visible true
$bossbar set l1 name [{"text":"                                                                                                  "},{"selector":"@s"},{"text":"$(text)"}]
scoreboard players operation l1 line_dur = max line_dur
function main:kill_feed/remove_tags
say line 1