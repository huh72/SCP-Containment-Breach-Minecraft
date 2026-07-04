#volume x2!
playsound cb:scp096.triggered ambient @a[tag=triggered096] ~ ~ ~ 0.25 1 1
playsound cb:scp096.angered ambient @a ~ ~ ~ 0.25 1 1

tag @n[type=zombie, tag=scp096] add triggered
tag @n[type=zombie, tag=scp096] remove idle
tag @n[type=zombie, tag=scp096] remove readyToBeTriggered

execute as @n[tag=aj.scp096.root] at @s run function animated_java:scp096/animations/rage_in/play