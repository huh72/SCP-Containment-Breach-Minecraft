playsound cb:scp066.eric ambient @a[distance=..32] ~ ~1 ~ 1 1 1

execute store result score Max ericPlaySoundTimerScp066 run random value 30..200
scoreboard players operation @s ericPlaySoundTimerScp066 = Max ericPlaySoundTimerScp066