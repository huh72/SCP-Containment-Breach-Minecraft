#possibility of interact check -card
execute at @e[type=item_display,tag=gatelockmarker,tag=r0] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[distance=..1.15] add can_interact_with_gate
execute at @e[type=item_display,tag=gatelockmarker,tag=r1] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[distance=..1.15] add can_interact_with_gate
execute at @e[type=item_display,tag=gatelockmarker,tag=r2] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[distance=..1.15] add can_interact_with_gate
execute at @e[type=item_display,tag=gatelockmarker,tag=r3] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[distance=..1.15] add can_interact_with_gate
tag @a[tag=can_interact_with_gate] add looking_on_door

#open/close func
# say @p[tag=can_interact_with_gate,scores={gate_right_click=1..}]
execute as @e[type=marker,tag=gate_marker,tag=!proceed,tag=closed] at @s if score @s access_level <= @p[tag=can_interact_with_gate,scores={gate_right_click=1..},distance=..7] access_level run function animated_java:gate/animations/openclosetoggle/play
execute as @e[type=marker,tag=gate_marker,tag=!proceed,tag=opened] at @s if score @s access_level <= @p[tag=can_interact_with_gate,scores={gate_right_click=1..},distance=..7] access_level run function animated_java:gate/animations/openclosetoggle/resume


tag @a remove can_interact_with_gate
scoreboard players set @a gate_right_click 0