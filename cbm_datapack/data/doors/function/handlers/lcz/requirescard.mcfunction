title @p[scores={door_right_click=1}] actionbar "This door requires a keycard."
execute as @p[scores={door_right_click=1..}] run function inventory:hotbar/set {"text":"'This door requires a keycard."}