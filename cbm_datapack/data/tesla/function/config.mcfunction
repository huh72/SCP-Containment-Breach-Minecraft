scoreboard objectives add tesla_idle dummy
scoreboard objectives add tesla_shock_timer dummy
scoreboard objectives add tesla_shock_cd dummy
scoreboard objectives add activating dummy
scoreboard objectives add activate_cd dummy

#shock effect rotation
scoreboard objectives add axis dummy

#idle tesla sound cd
scoreboard players set max* tesla_idle 40
#tesla shock timer
scoreboard players set max* tesla_shock_timer 20
#tesla shock cd
scoreboard players set max* tesla_shock_cd 30
#tesla activate timer
scoreboard players set max* activate_cd 40