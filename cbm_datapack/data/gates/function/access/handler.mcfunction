execute if score @s card_interact_cd matches 0 if score @n[type=item_display, tag=gate_marker] access_level matches 99 at @n[type=item_display, tag=gate_marker] run return run function gates:access/blocked

execute if score @s access_level >= @n[type=item_display, tag=gate_marker] access_level as @n[type=item_display, tag=gate_marker] if entity @s[tag=blocked, tag=!proceed] run return run function animated_java:gate/animations/openclosetoggle/play

execute if score @s access_level >= @n[type=item_display, tag=gate_marker] access_level as @n[type=item_display, tag=gate_marker] if entity @s[tag=!proceed, tag=closed] run return run function animated_java:gate/animations/openclosetoggle/play
execute if score @s access_level >= @n[type=item_display, tag=gate_marker] access_level as @n[type=item_display, tag=gate_marker] if entity @s[tag=!proceed, tag=opened] run return run function animated_java:gate/animations/openclosetoggle/resume

execute if score @s card_interact_cd matches 0 if score @s access_level < @n[type=item_display, tag=gate_marker] access_level at @n[type=item_display, tag=gate_marker] run function gates:access/denied