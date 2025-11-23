
scoreboard objectives add elev_timings dummy
scoreboard objectives add floor dummy

#cd of calling lift
scoreboard objectives add use_cd dummy
scoreboard players set max use_cd 10


#when player hit the button

#doors closes
scoreboard players set close_door elev_timings 10
#play sound of starting -> 6 secs
scoreboard players set sound0 elev_timings 40
#tp @e next elevator position
scoreboard players set tp0 elev_timings 100

#tp @e final elevator position -> open doors
scoreboard players set tp1 elev_timings 180
