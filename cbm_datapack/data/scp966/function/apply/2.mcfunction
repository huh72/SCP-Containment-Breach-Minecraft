say apply 2
#g message
execute if score @s timeNear966 = .2 timeNear966 at @n[tag=scp966] if entity @s[distance=..7] run function inventory:hotbar/set {"text":"'U feel restless 2"}

#g speed penalty
attribute @s movement_speed modifier add 0996-0-0-0 -0.0425 add_value