#after first close contact 1499_1 start pursuing player
#after second, attack him
#contact = being near ANY 1499_1 instance for x time

scoreboard objectives add 1499_1 dummy
scoreboard objectives add timeNear1499_1 dummy

scoreboard players set timing0 timeNear1499_1 200
scoreboard players set timing1 timeNear1499_1 500

scoreboard players set damageMin 1499_1 24
scoreboard players set damageMax 1499_1 78

scoreboard players set bleedingMin 1499_1 1
scoreboard players set bleedingMax 1499_1 5
