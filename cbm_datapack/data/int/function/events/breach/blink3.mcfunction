#requesting manual blink
function ui:title {"fadein":"3","time":"3","fadeout":"3","maintext":"uE003","requestcd":"4"}

scoreboard players set @a blink_timer 200

scoreboard players set .status i 10

stopsound @a * cb:i.balcony.alert
playsound cb:i.balcony.shit ambient @a ~ ~ ~ 1.5 1 1

schedule function int:events/breach/move3 3t