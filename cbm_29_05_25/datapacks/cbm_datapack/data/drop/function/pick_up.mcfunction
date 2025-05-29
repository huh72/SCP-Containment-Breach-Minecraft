#item replace entity @p container.21 from entity @s armor.head


execute if entity @s[tag=card1] as @a[tag=caster] if score @s right_click_item matches 1 run function give:card1
execute if entity @s[tag=card2] as @a[tag=caster] if score @s right_click_item matches 1 run function give:card2
execute if entity @s[tag=card3] as @a[tag=caster] if score @s right_click_item matches 1 run function give:card3
execute if entity @s[tag=card4] as @a[tag=caster] if score @s right_click_item matches 1 run function give:card4
execute if entity @s[tag=card5] as @a[tag=caster] if score @s right_click_item matches 1 run function give:card5
execute if entity @s[tag=cardomni] as @a[tag=caster] if score @s right_click_item matches 1 run function give:omnicard
execute if entity @s[tag=playingcard] as @a[tag=caster] if score @s right_click_item matches 1 run function give:playingcard
execute if entity @s[tag=mastercard] as @a[tag=caster] if score @s right_click_item matches 1 run function give:mastercard
execute if entity @s[tag=battery9] as @a[tag=caster] if score @s right_click_item matches 1 run function give:battery
execute if entity @s[tag=battery18] as @a[tag=caster] if score @s right_click_item matches 1 run function give:battery18
execute if entity @s[tag=killbattery] as @a[tag=caster] if score @s right_click_item matches 1 run function give:killbatery
execute if entity @s[tag=paper] as @a[tag=caster] if score @s right_click_item matches 1 run function give:paper_
execute if entity @s[tag=note] as @a[tag=caster] if score @s right_click_item matches 1 run function give:note
execute if entity @s[tag=yellowpaper] as @a[tag=caster] if score @s right_click_item matches 1 run function give:yellow_paper
execute if entity @s[tag=snav] as @a[tag=caster] if score @s right_click_item matches 1 run function give:snav
execute if entity @s[tag=eyedrop] as @a[tag=caster] if score @s right_click_item matches 1 run function give:eyedrops
execute if entity @s[tag=nvg] as @a[tag=caster] if score @s right_click_item matches 1 run function give:nightvisiongoggles
execute if entity @s[tag=nvg_red] as @a[tag=caster] if score @s right_click_item matches 1 run function give:nightvisiongoggles_red
execute if entity @s[tag=nvg_blue] as @a[tag=caster] if score @s right_click_item matches 1 run function give:nightvisiongoggles_blue
execute if entity @s[tag=gasmask] as @a[tag=caster] if score @s right_click_item matches 1 run function give:gasmask
#vest
execute if entity @s[tag=vest] as @a[tag=caster] if score @s right_click_item matches 1 run function give:vest
execute if entity @s[tag=vest] as @a[tag=caster] if score @s right_click_item matches 1 run function use:vest/use

execute if entity @s[tag=aidkit0] as @a[tag=caster] if score @s right_click_item matches 1 run function give:aidkit0
execute if entity @s[tag=coin] as @a[tag=caster] if score @s right_click_item matches 1 run function give:coin
execute if entity @s[tag=scp714] as @a[tag=caster] if score @s right_click_item matches 1 run function give:scp714
execute if entity @s[tag=scp420j] as @a[tag=caster] if score @s right_click_item matches 1 run function give:scp420j
execute if entity @s[tag=scp500] as @a[tag=caster] if score @s right_click_item matches 1 run function give:scp500
execute if entity @s[tag=scp860] as @a[tag=caster] if score @s right_click_item matches 1 run function give:scp860
execute if entity @s[tag=scp148] as @a[tag=caster] if score @s right_click_item matches 1 run function give:scp148
execute if entity @s[tag=white_hand] as @a[tag=caster] if score @s right_click_item matches 1 run function give:whitearm
execute if entity @s[tag=black_hand] as @a[tag=caster] if score @s right_click_item matches 1 run function give:blackarm





execute if entity @s[tag=card1] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=card2] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=card3] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=card4] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=card5] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=cardomni] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=playingcard] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=mastercard] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=battery9] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=battery18] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=killbattery] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=paper] at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=note] at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=yellowpaper] at @s run playsound cb:interact.pickitem0 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=snav] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=eyedrop] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=nvg] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=nvg_red] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=nvg_blue] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=gasmask] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=vest] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=aidkit0] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=coin] at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=scp714] at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=scp420j] at @s run playsound cb:interact.pickitem2 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=scp500] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=scp860] at @s run playsound cb:interact.pickitem3 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=scp148] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=white_hand] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1
execute if entity @s[tag=black_hand] at @s run playsound cb:interact.pickitem1 ambient @a[distance=..8] ~ ~ ~ 1 1 1

kill @s
