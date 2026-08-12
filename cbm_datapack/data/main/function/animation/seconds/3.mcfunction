execute as @a[tag=dead] run scoreboard players remove @s[scores={respawnCountdown=1..}] respawnCountdown 1
execute as @a[tag=dead] run title @s[scores={respawnCountdown=3}] subtitle "You will be able to respawn in 3 seconds."

schedule function main:animation/seconds/2 20t replace