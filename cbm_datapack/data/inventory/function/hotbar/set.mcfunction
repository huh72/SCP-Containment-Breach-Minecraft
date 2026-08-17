#g check if name has changed
# execute if data storage cb:text cu

item replace entity @s container.0 with carrot_on_a_stick[minecraft:item_name="$"]
item replace entity @s container.1 with carrot_on_a_stick[minecraft:item_name="$"]
item replace entity @s container.2 with carrot_on_a_stick[minecraft:item_name="$"]
item replace entity @s container.3 with carrot_on_a_stick[minecraft:item_name="$"]
item replace entity @s container.4 with carrot_on_a_stick[minecraft:item_name="$"]
item replace entity @s container.5 with carrot_on_a_stick[minecraft:item_name="$"]
item replace entity @s container.6 with carrot_on_a_stick[minecraft:item_name="$"]
item replace entity @s container.7 with carrot_on_a_stick[minecraft:item_name="$"]
item replace entity @s container.8 with carrot_on_a_stick[minecraft:item_name="$"]

tag @s add inQueueToGetOuputText


$data modify storage cb:output itemText set value $(text)'

#g set item
schedule function inventory:hotbar/set_helper 2t replace

#g 
# $data modify storage cb:text curr set value $(text)
# $data modify storage cb:text prev set value $(text)

# #g