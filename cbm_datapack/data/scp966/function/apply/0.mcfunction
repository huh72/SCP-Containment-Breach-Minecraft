say apply 0
#g message
execute if score @s timeNear966 = .0 timeNear966 at @n[tag=scp966] if entity @s[distance=..7] run function inventory:hotbar/set {"text":"'U feel restless 0"}

#g speed penalty
attribute @s movement_speed modifier add 0996-0-0-0 -0.0085 add_value