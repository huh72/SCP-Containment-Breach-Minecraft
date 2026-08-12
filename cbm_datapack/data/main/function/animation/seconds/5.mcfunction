execute as @a[tag=dead] run scoreboard players remove @s[scores={respawnCountdown=1..}] respawnCountdown 1
execute as @a[tag=dead] run title @s[scores={respawnCountdown=5}] subtitle "You will be able to respawn in 5 seconds."

#g reset size
execute as @a[tag=dead] run attribute @s[scores={respawnCountdown=5}] scale base set 1.2
execute as @a[tag=dead] at @s run tp @s[scores={respawnCountdown=5}] ~ ~256 ~
execute as @a[tag=dead] at @s[scores={respawnCountdown=5}] run setblock ~ ~-2 ~ glass

schedule function main:animation/seconds/4 20t replace