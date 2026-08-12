execute as @a[tag=!dead] if entity @s[tag=ez] if score isEnteredEz announcTimer matches 0 run scoreboard players set isEnteredEz announcTimer 1
execute if score isEnteredEz announcTimer matches 1 run scoreboard players add . announcTimer 1

#g timings
execute if score . announcTimer = .0 announcTimer run function announc:play/0
execute if score . announcTimer = .1 announcTimer run function announc:play/1
execute if score . announcTimer = .2 announcTimer run function announc:play/2