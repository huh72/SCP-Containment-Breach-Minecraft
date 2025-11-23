bossbar set l3 visible true
$bossbar set l3 name [{"text":"                                                                                                  "},{"selector":"@s"},{"text":"$(text)"}]
scoreboard players operation l3 line_dur = max line_dur
function main:kill_feed/remove_tags
say line 3