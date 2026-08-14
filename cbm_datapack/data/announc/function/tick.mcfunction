execute as @a[tag=!dead] if entity @s[tag=ez] if score isEnteredEz announcTimer matches 0 run scoreboard players set isEnteredEz announcTimer 1
execute if score isEnteredEz announcTimer matches 1 run scoreboard players add . announcTimer 1

#g timings
execute if score . announcTimer = .0 announcTimer run function announc:play/0
execute if score . announcTimer = .1 announcTimer run function announc:play/1
execute if score . announcTimer = .2 announcTimer run function announc:play/2

execute if score . announcTimer = .threat0 announcTimer run function announc:play/threat0
execute if score . announcTimer = .threat1 announcTimer run function announc:play/threat1
execute if score . announcTimer = .threat2 announcTimer run function announc:play/threat2
execute if score . announcTimer = .threatpos announcTimer run function announc:play/threatpos
execute if score . announcTimer = .threatfinal announcTimer run function announc:play/threatfinal

execute if score . announcTimer = .cameracheck announcTimer run function announc:play/cameracheck
execute if score . announcTimer = .camerafound0 announcTimer run function announc:play/camerafound0

# execute if score . announcTimer = .173 announcTimer run function announc:play/173
execute if score . announcTimer = .939 announcTimer run function announc:play/939
execute if score . announcTimer = .049 announcTimer run function announc:play/049
execute if score . announcTimer = .966 announcTimer run function announc:play/966
execute if score . announcTimer = .096 announcTimer run function announc:play/096
execute if score . announcTimer = .all announcTimer run function announc:play/all

execute if score . announcTimer = .camerafound1 announcTimer run function announc:play/camerafound1

#g contain 173
execute if score .173 isContained matches 0 if score . announcTimer >= .173 announcTimer as @a[tag=!dead] at @s unless entity @n[tag=scp173, distance=..20] run function announc:play/173
execute as @n[tag=173.carrier] at @s run tp @n[tag=scp173contained] ^ ^ ^-1.25

#g contain 049
execute if score .049 isContained matches 0 if score . announcTimer >= .049 announcTimer as @a[tag=!dead] at @s unless entity @n[tag=scp049, distance=..20] run function announc:play/049