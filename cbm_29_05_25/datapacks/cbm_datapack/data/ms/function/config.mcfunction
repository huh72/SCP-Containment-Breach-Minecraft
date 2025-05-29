# config
scoreboard objectives add sneak minecraft.custom:sneak_time
scoreboard players set step* sneak 16
scoreboard objectives add walk_ minecraft.custom:minecraft.walk_one_cm
scoreboard players set step* walk_ 210
scoreboard objectives add run minecraft.custom:minecraft.sprint_one_cm
scoreboard players set step* run 170

#fall -> sound
scoreboard objectives add fall_step dummy

#position
scoreboard objectives add Xpos dummy
scoreboard objectives add Zpos dummy