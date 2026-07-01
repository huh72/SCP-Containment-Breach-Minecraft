#this script accepts macros value "pitch"

$execute unless block ~ ~-0.4 ~ #drop:air run playsound cb:mtf.step ambient @a[distance=..15] ~ ~ ~ 1 $(pitch) 1

#function scps:sounds/step/heavy {"pitch":"1.0"}