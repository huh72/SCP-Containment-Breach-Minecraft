###chasing state
scoreboard objectives add scp106state dummy
#0 - no, 1- active, 2- passive


#fall in pd animation
scoreboard objectives add fallinpdanimation dummy
scoreboard players set max fallinpdanimation 50

### appear timer
scoreboard objectives add appear_timer dummy
#max
scoreboard players set max_a appear_timer 40
scoreboard players set max_p appear_timer 100


### disappear timer
scoreboard objectives add disappear_timer dummy
#max
scoreboard players set max_a disappear_timer 20
scoreboard players set max_p disappear_timer 100


### re-appear timer
scoreboard objectives add reappear_timer dummy
#max
scoreboard players set down reappear_timer 20
scoreboard players set up reappear_timer 40


### hit 
scoreboard objectives add 106hit_cd dummy
scoreboard players set max_a 106hit_cd 10
scoreboard players set max_p 106hit_cd 20


### pd shrink
scoreboard objectives add pd_shrink_scale dummy
scoreboard players set max pd_shrink_scale 99
scoreboard players set max_wall pd_shrink_scale 4


### HUNTING values
scoreboard objectives add hunting dummy
scoreboard players set max_a hunting 600
scoreboard players set max_p hunting 2400

#chasetheme
scoreboard objectives add chasetheme_cd dummy
scoreboard players set max chasetheme_cd 601

# breath
scoreboard objectives add breath_cd dummy
scoreboard players set max breath_cd 55


# laugh 
scoreboard objectives add laugh_cd dummy
scoreboard players set max_a laugh_cd 120
scoreboard players set max_p laugh_cd 350


# wall hit cd
scoreboard objectives add wallRot dummy


# wall hit cd
scoreboard objectives add wall_cd dummy
scoreboard players set max wall_cd 20


#scp106 summon conditions variables
scoreboard objectives add step_on_shrink dummy
scoreboard players set max step_on_shrink 140

scoreboard objectives add step_on_shrink_cd dummy
scoreboard players set max step_on_shrink_cd 800


#room shrink handler vars
scoreboard objectives add roomsize_shrink dummy
scoreboard players set max roomsize_shrink 95
scoreboard players set 106 roomsize_shrink 20

#g pocket dimension
scoreboard objectives add pocketDimension dummy
scoreboard players set .ambient pocketDimension 540