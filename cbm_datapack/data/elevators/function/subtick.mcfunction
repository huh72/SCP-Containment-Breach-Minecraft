tag @a remove can_interact_with_elevator

execute positioned ^-2 ^ ^-1.1 run tag @a[distance=..1.5] add can_interact_with_elevator
execute positioned ^2 ^ ^1.1 run tag @a[distance=..1.5] add can_interact_with_elevator

tag @a[tag=can_interact_with_elevator] add close_to_door