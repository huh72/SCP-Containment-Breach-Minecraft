execute as @e[tag=guard,tag=!musicguard,tag=!balcony] run function guard:switchhostility {"s":"@s"}
data modify entity @n[tag=ulgrin] wander_target set from entity @n[tag=i.pathpoint0] Pos