bossbar set l3 visible true
$bossbar set l3 name [{"text":"                                                                                                  "},{"selector":"@s"},{"text":"$(text)"}]
scoreboard players operation l3 line_dur = max line_dur
tag @s remove d_173
tag @s remove d_106
tag @s remove d_1048a
tag @s remove d_tesla
tag @s remove d_049
tag @s remove d_fall
say line 3