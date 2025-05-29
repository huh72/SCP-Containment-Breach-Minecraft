
scoreboard objectives add rot096x dummy
scoreboard objectives add rot096y dummy


#max anger time (for test = 200, for real game = minimum of 35 secs => 700 )
scoreboard objectives add anger_time dummy
scoreboard players set max* anger_time 700

#triggering time
scoreboard objectives add triggering_time dummy
scoreboard players set max* triggering_time 600

#scream timings
scoreboard objectives add scream_timer dummy
scoreboard players set max* scream_timer 200