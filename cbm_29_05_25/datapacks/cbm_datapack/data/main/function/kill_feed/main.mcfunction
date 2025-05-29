execute if score l1 line_dur matches 1.. run scoreboard players remove l1 line_dur 1
execute if score l2 line_dur matches 1.. run scoreboard players remove l2 line_dur 1
execute if score l3 line_dur matches 1.. run scoreboard players remove l3 line_dur 1


# execute as @a[tag=dead,tag=d_173] unless score l1 line_dur matches 1..200 run function main:kill_feed/line1 {"text":" was killed by scp 173#1"}
# execute as @a[tag=dead,tag=d_173] if score l1 line_dur matches 1..200 unless score l2 line_dur matches 1..200 run function main:kill_feed/line2 {"text":" was killed by scp 173#2"}
# execute as @a[tag=dead,tag=d_173] if score l1 line_dur matches 1..200 if score l2 line_dur matches 1..200 run function main:kill_feed/line3 {"text":" was killed by scp 173#3"}

execute as @a[tag=dead] unless score l1 line_dur matches 1..200 run function main:kill_feed/line1_
execute as @a[tag=dead] if score l1 line_dur matches 1..200 unless score l2 line_dur matches 1..200 run function main:kill_feed/line2_
execute as @a[tag=dead] if score l1 line_dur matches 1..200 if score l2 line_dur matches 1..200 run function main:kill_feed/line3_

#clear
execute if score l1 line_dur matches 0 run bossbar set l1 name {"text":""}
execute if score l2 line_dur matches 0 run bossbar set l2 name {"text":""}
execute if score l3 line_dur matches 0 run bossbar set l3 name {"text":""}

execute if score l1 line_dur matches 0 run bossbar set l1 visible false
execute if score l2 line_dur matches 0 run bossbar set l2 visible false
execute if score l3 line_dur matches 0 run bossbar set l3 visible false