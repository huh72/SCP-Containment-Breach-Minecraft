#g render
execute positioned ~ ~1 ~ run function scp966:0
execute positioned ~ ~1 ~ run function scp966:1
execute positioned ~ ~1 ~ run function scp966:2
execute positioned ~ ~1 ~ run function scp966:3
execute positioned ~ ~1 ~ run function scp966:4
execute positioned ~ ~1 ~ run function scp966:5

#g move

#g open doors

#g echo sound play
scoreboard players remove @s echo966 1
execute if score @s echo966 matches 0 run function scp966:echo

#g apply restless effect
execute unless predicate generation:20 as @a[tag=!dead] unless entity @s[distance=..7] run scoreboard players remove @s[scores={timeNear966=1..}] timeNear966 1

scoreboard players add @a[tag=!dead, distance=..3] timeNear966 2
scoreboard players add @a[tag=!dead, distance=3..7] timeNear966 1

execute as @a[tag=!dead] if score @s timeNear966 >= .0 timeNear966 unless score @s timeNear966 >= .1 timeNear966 run function scp966:apply/0
execute as @a[tag=!dead] if score @s timeNear966 >= .1 timeNear966 unless score @s timeNear966 >= .2 timeNear966 run function scp966:apply/1
execute as @a[tag=!dead] if score @s timeNear966 >= .2 timeNear966 run function scp966:apply/2

execute as @a[tag=!dead] if score @s timeNear966 matches 0 run function scp966:apply/clear