kill @e[type=marker,tag=door_empty,tag=!i]
kill @e[type=marker,tag=door_marker1,tag=!i]
kill @e[type=marker,tag=door_marker_hcz,tag=!i]
kill @e[type=marker,tag=door_marker_checkpoint]
kill @e[type=marker,tag=tesla_origin]
kill @e[type=marker,tag=pds]
kill @e[type=item_display,tag=pds_roomsize]
kill @e[type=marker,tag=event3_1handler]
kill @e[type=marker,tag=event3_handler173]
kill @e[type=marker,tag=event2_spawn049]
kill @e[type=marker,tag=door_marker2]
kill @e[type=marker,tag=door_marker_ez]
kill @e[type=marker,tag=door_marker_checkpoint]
kill @e[type=marker,tag=tesla_origin]
kill @e[type=marker, tag=save]
kill @e[type=marker, tag=corpse]
kill @e[type=marker, tag=ventroomtrigger]
kill @e[type=marker, tag=scp1048spawnpoint]
kill @e[type=marker, tag=event.914]
kill @e[type=marker, tag=str4.event]
kill @e[type=marker, tag=p.smokeup]
#g 008 event
kill @e[type=marker, tag=008spawnpoint]
kill @e[type=item_display, tag=singleButton0]
function animated_java:singledoor0/remove/all
function animated_java:scp008/remove/all

#g hcz single door clear
function animated_java:singledoor1/remove/all

execute as @e[tag=scientist] run function animated_java:scientist/remove/all

#g clear 079_1 event
kill @e[type=item_display, tag=079face]
kill @e[type=item_display, tag=079x]
kill @e[type=marker, tag=event079.trigger]
kill @e[type=marker, tag=079.spawnpoint]
kill @e[type=marker, tag=079gate.spawnpoint0]
kill @e[type=marker, tag=079gate.spawnpoint1]

kill @e[type=marker, tag=doorsspawnpoint]


function gates:remove

#g TEMP↓
kill @e[tag=scp049sign]

function scp914:spawn/remove
kill @e[type=marker,tag=event2_handler]

#event 3
function animated_java:airlockdoors/remove/all

#914 stuff
function animated_java:door914/remove/all
function animated_java:914_button/remove/all
function animated_java:914_start/remove/all

#levers
function animated_java:lever/remove/all
kill @e[type=marker,tag=lever_marker]

#elevators
kill @e[type=marker, tag=elevator, tag=!neverRemove]
function animated_java:elevator_doors/remove/all

#
kill @e[type=armor_stand,tag=mauallySpawnedPD]
kill @e[type=marker, tag=firstSpawnpoint]