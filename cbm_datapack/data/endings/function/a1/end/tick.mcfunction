#timer up
scoreboard players add @s gameend 1

#start ci's speech for playert
execute if score @s[tag=!dead] gameend = .cispeech.time gameend run function endings:a1/end/cispeech

#end game for player
execute if score @s[tag=!dead] gameend = .gameend.time gameend run function endings:a1/end/final