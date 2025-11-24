#SCP 066 config
scoreboard objectives add speedScp066 dummy
scoreboard objectives add touchCountScp066 dummy
scoreboard objectives add touchCountCdScp066 dummy
scoreboard objectives add ericPlaySoundTimerScp066 dummy
scoreboard objectives add damageScp066 dummy

scoreboard players set Max touchCountScp066 6
scoreboard players set Max touchCountCdScp066 80
execute store result score Max ericPlaySoundTimerScp066 run random roll 30..200

#hit marker handlers' vars
scoreboard objectives add Xscp066 dummy
scoreboard objectives add Yscp066 dummy
scoreboard objectives add Zscp066 dummy


#if player in 12 block radius, 066 will try to reach him (wander_target).
#once he made it, var+, sound+
#once var = varMax, play Bethoven to all players very loudly (128 block radius)

#every t secs play eric sound