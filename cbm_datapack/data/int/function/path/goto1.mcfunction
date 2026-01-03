data modify entity @n[tag=ulgrin] wander_target set from entity @n[tag=i.pathpoint1] Pos
execute at @n[tag=i.pathpoint0] run playsound cb:i.ia.announc ambient @a ~ ~1 ~ 3 1 1
tag @n[tag=i.pathpoint0] add passed