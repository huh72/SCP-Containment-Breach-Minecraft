playsound cb:mtf.beep ambient @a[distance=..24] ~ ~ ~ 1.6 1 1
playsound cb:mtf.beep ambient @a[distance=24..32] ~ ~ ~ 2.1 1 1
playsound cb:mtf.beep ambient @a[distance=32..48] ~ ~ ~ 3.1 1 1

execute store result score @s beep_cd run random value 400..600 cb:mtfbeepcd