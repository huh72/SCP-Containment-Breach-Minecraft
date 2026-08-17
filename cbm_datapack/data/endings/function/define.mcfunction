#g Gate A
execute if score .106 isContained matches 0 if score .gateSelected e matches 1 run scoreboard players set .selected e 0
execute if score .106 isContained matches 1 if score .gateSelected e matches 1 run scoreboard players set .selected e 1

#g Gate B
execute if score .isWarheadEnabled e matches 1 if score .gateSelected e matches 2 run scoreboard players set .selected e 2
execute if score .isWarheadEnabled e matches 0 if score .gateSelected e matches 2 run scoreboard players set .selected e 3