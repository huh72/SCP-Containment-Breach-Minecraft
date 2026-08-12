execute as @e[tag=173] at @s positioned ~95 ~ ~152 run function generation:lcz/check {"pos":"91"}
execute as @e[tag=173] at @s positioned ~76 ~ ~152 run function generation:lcz/check {"pos":"92"}
execute as @e[tag=173] at @s positioned ~57 ~ ~152 run function generation:lcz/check {"pos":"93"}
execute as @e[tag=173] at @s positioned ~38 ~ ~152 run function generation:lcz/check {"pos":"94"}
execute as @e[tag=173] at @s positioned ~19 ~ ~152 run function generation:lcz/check {"pos":"95"}
execute as @e[tag=173] at @s positioned ~ ~ ~152 run function generation:lcz/check {"pos":"96"}
execute as @e[tag=173] at @s positioned ~-19 ~ ~152 run function generation:lcz/check {"pos":"97"}
execute as @e[tag=173] at @s positioned ~-38 ~ ~152 run function generation:lcz/check {"pos":"98"}
execute as @e[tag=173] at @s positioned ~-57 ~ ~152 run function generation:lcz/check {"pos":"99"}
execute as @e[tag=173] at @s positioned ~-76 ~ ~152 run function generation:lcz/check {"pos":"910"}
execute as @e[tag=173] at @s positioned ~-95 ~ ~152 run function generation:lcz/check {"pos":"911"}
execute as @e[tag=173] at @s positioned ~-114 ~ ~152 run function generation:lcz/check {"pos":"912"}
execute as @e[tag=173] at @s positioned ~-133 ~ ~152 run function generation:lcz/check {"pos":"913"}
execute as @e[tag=173] at @s positioned ~-152 ~ ~152 run function generation:lcz/check {"pos":"914"}

execute as @e[tag=173] at @s run place template lcz:start0 ~2 ~ ~ counterclockwise_90
execute as @e[tag=173] at @s run place template lcz:start1 ~33 ~4 ~-13 counterclockwise_90
#in start0 at gateSpawnpoint spawn gate model
execute at @n[tag=gateSpawnpoint] run function animated_java:gate/summon with storage aj:temp
execute at @n[tag=gateSpawnpoint] as @n[tag=gate] run function animated_java:gate/animations/openclosetoggle/play
execute at @n[tag=gateSpawnpoint] run tag @n[tag=gate] add start.gate
kill @e[type=marker, tag=gateSpawnpoint]

schedule function generation:lcz/int_room_gen/main 5t replace

# say end lcz!