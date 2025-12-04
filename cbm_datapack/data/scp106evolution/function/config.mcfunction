###chasing state
scoreboard objectives add scp106state dummy
#0 - no, 1- active, 2- passive

### appear timer
scoreboard objectives add appear_timer dummy
#max
scoreboard players set max_a appear_timer 40
scoreboard players set max_p appear_timer 100


### disaper timer
scoreboard objectives add disappear_timer dummy
#max
scoreboard players set max_a disappear_timer 5
scoreboard players set max_p disappear_timer 100


### hit 
scoreboard objectives add 106hit_cd dummy
scoreboard players set max_a 106hit_cd 10
scoreboard players set max_p 106hit_cd 20


### pd shrink
scoreboard objectives add pd_shrink_scale dummy
scoreboard players set max_p pd_shrink_scale 99
# activate shrink cd
# scoreboard objectives add pd_shrink_scale dummy


### HUNTING values
scoreboard objectives add hunting dummy
scoreboard players set max_a hunting 600
scoreboard players set max_p hunting 2400


# breath
scoreboard objectives add breath_cd dummy
scoreboard players set max breath_cd 55


# laugh 
scoreboard objectives add laugh_cd dummy
scoreboard players set max_a laugh_cd 175
scoreboard players set max_p laugh_cd 350


# wall hit cd
scoreboard objectives add wallRot dummy


# wall hit cd
scoreboard objectives add wall_cd dummy
scoreboard players set max wall_cd 20


#scp106 summon conditions variables
scoreboard objectives add step_on_shrink dummy
scoreboard players set max step_on_shrink 100

scoreboard objectives add step_on_shrink_cd dummy
scoreboard players set max step_on_shrink_cd 400
