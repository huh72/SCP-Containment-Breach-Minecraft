#possibility of interact check -card
execute at @e[type=item_display,tag=gatelockmarker,tag=r0] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[distance=..1.15] add can_interact_with_gate
execute at @e[type=item_display,tag=gatelockmarker,tag=r1] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[distance=..1.15] add can_interact_with_gate
execute at @e[type=item_display,tag=gatelockmarker,tag=r2] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[distance=..1.15] add can_interact_with_gate
execute at @e[type=item_display,tag=gatelockmarker,tag=r3] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[distance=..1.15] add can_interact_with_gate
tag @a[tag=can_interact_with_gate] add looking_on_door


# execute as @n[tag=gate_marker] at @s positioned ~-0.125 ~ ~-3.125 run execute as @a[dy=2,dz=6] positioned ~-0.75 ~ ~-0.75 at @s[dy=2,dz=6,tag=!dead] run function gates:kill
# execute as @a at @s as @n[tag=gate_marker] at @s positioned ~-0.125 ~ ~-3.125 run particle flame
# execute as @a at @s as @n[tag=gate_marker] at @s positioned ~-0.125 ~ ~-3.125 positioned ~1 ~ ~7 positioned ~-0.75 ~ ~-0.75 run particle soul_fire_flame

execute as @a[tag=can_interact_with_gate,scores={gate_right_click=1..}] at @s if score @s access_level >= @n[type=item_display,tag=gate_marker] access_level as @n[type=item_display,tag=gate_marker] if entity @s[type=item_display,tag=gate_marker,tag=!proceed,tag=closed] run function animated_java:gate/animations/openclosetoggle/play
execute as @a[tag=can_interact_with_gate,scores={gate_right_click=1..}] at @s if score @s access_level >= @n[type=item_display,tag=gate_marker] access_level as @n[type=item_display,tag=gate_marker] if entity @s[type=item_display,tag=gate_marker,tag=!proceed,tag=opened] run function animated_java:gate/animations/openclosetoggle/resume


tag @a remove can_interact_with_gate
scoreboard players set @a gate_right_click 0