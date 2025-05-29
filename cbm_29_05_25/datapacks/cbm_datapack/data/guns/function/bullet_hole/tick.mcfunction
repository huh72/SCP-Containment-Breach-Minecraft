scoreboard players add @e[tag=bullet_hole] bullet_hole_live_time 1

execute as @e[tag=bullet_hole] if score @s bullet_hole_live_time > max bullet_hole_live_time run function guns:bullet_hole/clear1