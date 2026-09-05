scoreboard objectives add gamesettings dummy

execute unless score .difficulty gamesettings matches 0.. run scoreboard players set .difficulty gamesettings 0
execute unless score .keepInventory gamesettings matches 0.. run scoreboard players set .keepInventory gamesettings 0