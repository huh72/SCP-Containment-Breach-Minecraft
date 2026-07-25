schedule function events:049/lightson 16t replace
playsound cb:scp049.lightson ambient @a[tag=location.049chamber] ~ ~ ~ 1 1 1
playsound cb:scp049.lightson ambient @a[tag=!location.049chamber] ~ ~-5 ~ 0.3 1 1

scoreboard players set .state chamber049.event 2