tag @a[distance=..1.25] add canInteractWithSingleButton0

tag @a[tag=canInteractWithSingleButton0] add looking_on_door

execute if entity @s[tag=008] as @p[tag=canInteractWithSingleButton0] if entity @s[scores={door_right_click=1..}] as @n[type=item_display, tag=aj.singledoor0.root, tag=008_0] run return run function animated_java:singledoor0/animations/openclosetoggle/resume
execute as @p[tag=canInteractWithSingleButton0] if entity @s[scores={door_right_click=1..}] as @n[type=item_display, tag=aj.singledoor0.root] run function animated_java:singledoor0/animations/openclosetoggle/resume