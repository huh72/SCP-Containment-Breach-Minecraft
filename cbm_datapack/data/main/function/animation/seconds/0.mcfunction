execute as @a[tag=dead] run scoreboard players remove @s[scores={respawnCountdown=1..}] respawnCountdown 1
execute as @a[tag=dead] run title @s[scores={respawnCountdown=0}] subtitle [{"text":"Press "},{"keybind":"key.use"},{"text":" to respawn."}]
execute as @a[tag=dead] run tag @s[scores={respawnCountdown=0}] add can_respawn