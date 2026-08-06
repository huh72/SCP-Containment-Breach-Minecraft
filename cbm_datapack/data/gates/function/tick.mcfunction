#possibility of interact check -card
execute at @e[type=item_display,tag=gatelockmarker,tag=r0] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[tag=!dead, distance=..1.15] add can_interact_with_gate
execute at @e[type=item_display,tag=gatelockmarker,tag=r1] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[tag=!dead, distance=..1.15] add can_interact_with_gate
execute at @e[type=item_display,tag=gatelockmarker,tag=r2] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[tag=!dead, distance=..1.15] add can_interact_with_gate
execute at @e[type=item_display,tag=gatelockmarker,tag=r3] rotated ~ ~90 positioned ^ ^1.5 ^-0.5 run tag @a[tag=!dead, distance=..1.15] add can_interact_with_gate
tag @a[tag=can_interact_with_gate] add looking_on_door

#g access
execute as @a[tag=!dead, tag=can_interact_with_gate, scores={gate_right_click=1..}] at @s run function gates:access/handler


tag @a remove can_interact_with_gate
scoreboard players set @a gate_right_click 0