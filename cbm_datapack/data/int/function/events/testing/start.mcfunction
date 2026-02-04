scoreboard players operation .timer i = 1400 i
execute at @n[tag=i.lastRoomPoint] as @n[tag=gate] at @s run function int:events/testing/closegate

scoreboard players set .status i 8



tag @a remove inchamber