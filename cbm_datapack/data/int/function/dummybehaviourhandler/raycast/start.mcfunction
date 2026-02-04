scoreboard players set .air v 1
tag @s remove seeDummyDirectly

execute if score .air v matches 1 positioned ^ ^ ^ run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^1 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^2 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^3 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^4 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^5 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^6 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^7 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^8 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^9 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^10 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^11 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^12 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^13 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^14 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^15 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^16 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^17 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^18 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^19 run function int:dummybehaviourhandler/raycast/check
execute if score .air v matches 1 positioned ^ ^ ^20 run function int:dummybehaviourhandler/raycast/check

# title @a actionbar ""
# execute as @a[tag=seeDummyDirectly] if score .playerLookingByX v matches 0 run title @s actionbar [{"score":{"name":".result","objective":"v"},"color":"red"}]
# execute as @a[tag=seeDummyDirectly] if score .playerLookingByX v matches 1 run title @s actionbar [{"score":{"name":".result","objective":"v"},"color":"green"}]