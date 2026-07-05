scoreboard players set .d0 lookcheck 2
scoreboard players set .d1 lookcheck 2
scoreboard players set .d2 lookcheck 2
scoreboard players set .d3 lookcheck 3
scoreboard players set .d4 lookcheck 3

scoreboard players operation .d1 lookcheck += .d0 lookcheck
scoreboard players operation .d2 lookcheck += .d1 lookcheck
scoreboard players operation .d3 lookcheck += .d2 lookcheck
scoreboard players operation .d4 lookcheck += .d3 lookcheck

scoreboard players set 15 math 15
scoreboard players set 100 math 100
scoreboard players set 1000 math 1000

# summon marker ~ ~ ~ {Tags:[look_check.helper]}