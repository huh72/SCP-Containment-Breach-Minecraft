#this script accepts macros value "pitch"

$execute if block ~ ~-0.4 ~ #ms:stone run playsound cb:player.step ambient @a[distance=..15] ~ ~0.5 ~ 0.35 $(pitch) 1
$execute if block ~ ~-0.4 ~ #ms:metal run playsound cb:player.stepmetal ambient @a[distance=..15] ~ ~0.5 ~ 0.35 $(pitch) 1

#function scps:sounds/step {"pitch":"1.0"}