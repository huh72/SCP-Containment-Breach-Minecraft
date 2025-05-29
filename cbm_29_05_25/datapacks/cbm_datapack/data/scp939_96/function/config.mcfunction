
# hit cooldown
scoreboard objectives add hit_damage dummy
scoreboard objectives add hit_cd dummy

scoreboard players set max* hit_cd 30

#movement detect
scoreboard objectives add walk minecraft.custom:walk_one_cm


#lure & alert & attack cd
scoreboard objectives add phrase_cd dummy
scoreboard players set max* phrase_cd 600

scoreboard objectives add alert_cd dummy
scoreboard players set max* alert_cd 400