execute as @a[tag=dead] run scoreboard players remove @s[scores={respawnCountdown=1..}] respawnCountdown 1
execute as @a[tag=dead] run title @s[scores={respawnCountdown=4}] subtitle "You will be able to respawn in 4 seconds."

schedule function main:animation/seconds/3 20t replace