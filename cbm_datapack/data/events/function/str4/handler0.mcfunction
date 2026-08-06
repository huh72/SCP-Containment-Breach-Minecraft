#g vars
scoreboard players add @s event.str4.ambient 1

#g ambience
execute if score @s event.str4.ambient = .loop event.str4.ambient run function events:str4/ambient
