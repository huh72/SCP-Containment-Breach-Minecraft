#removing updated doors
function animated_java:door0/remove/all
function animated_java:door_check0/remove/all
function animated_java:door_card0/remove/all
kill @e[tag=door_marker]
kill @e[tag=door_marker0]
kill @e[tag=door_marker_check0]

#removing rooms spawn markers
kill @e[tag=str,tag=gen]
kill @e[tag=corner,tag=gen]
kill @e[tag=t_f,tag=gen]
kill @e[tag=x_f,tag=gen]
kill @e[tag=checkp,tag=gen]
kill @e[tag=dd,tag=gen]
#tesla
kill @e[tag=tesla_origin]

schedule function generation:clear/0 1t
schedule function generation:clear/1 10t
schedule function generation:clear/2 20t
schedule function generation:clear/3 30t
schedule function generation:clear/4 40t
schedule function generation:clear/5 50t
schedule function generation:clear/6 60t
schedule function generation:clear/7 70t
schedule function generation:clear/8 80t
schedule function generation:clear/9 90t

schedule function generation:clear/10 100t
schedule function generation:clear/11 110t
schedule function generation:clear/12 120t
schedule function generation:clear/13 130t
schedule function generation:clear/14 140t
schedule function generation:clear/15 150t
schedule function generation:clear/16 160t
schedule function generation:clear/17 170t

schedule function generation:clear/18 180t
schedule function generation:clear/19 190t
schedule function generation:clear/20 200t
schedule function generation:clear/21 210t
schedule function generation:clear/22 220t
schedule function generation:clear/23 230t
schedule function generation:clear/24 240t