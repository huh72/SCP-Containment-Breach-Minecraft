tag @s add init

scoreboard players set @s speedScp066 0
scoreboard players set Const damageScp066 0
scoreboard players set @s touchCountScp066 0
scoreboard players set @s ericPlaySoundTimerScp066 0
scoreboard players set @s touchCountCdScp066 0

execute store result score Max ericPlaySoundTimerScp066 run random value 50..200

data modify storage scp066hitdecal x set value 0
data modify storage scp066hitdecal y set value 0
data modify storage scp066hitdecal z set value 0


tellraw @a [{"text":"SCP-066 have been initialized succesfully!"}]
