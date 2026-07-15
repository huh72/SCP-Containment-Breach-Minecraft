scoreboard objectives add lookcheck dummy

function look_check:preconfig

data merge storage cb:lookcheck {throwErrorText:"The 'ultimate' function got unacceptable macros value!"}

#//g X
#//! SCP-650
data modify storage cb:lookcheck xRotMin0_0 set value 0
data modify storage cb:lookcheck xRotMax0_0 set value 60
data modify storage cb:lookcheck xRotMin0_1 set value 300
data modify storage cb:lookcheck xRotMax0_1 set value 360

data modify storage cb:lookcheck xRotMin1_0 set value 0
data modify storage cb:lookcheck xRotMax1_0 set value 60
data modify storage cb:lookcheck xRotMin1_1 set value 300
data modify storage cb:lookcheck xRotMax1_1 set value 360

data modify storage cb:lookcheck xRotMin2_0 set value 0
data modify storage cb:lookcheck xRotMax2_0 set value 60
data modify storage cb:lookcheck xRotMin2_1 set value 300
data modify storage cb:lookcheck xRotMax2_1 set value 360

data modify storage cb:lookcheck xRotMin3_0 set value 0
data modify storage cb:lookcheck xRotMax3_0 set value 60
data modify storage cb:lookcheck xRotMin3_1 set value 300
data modify storage cb:lookcheck xRotMax3_1 set value 360

data modify storage cb:lookcheck xRotMin4_0 set value 0
data modify storage cb:lookcheck xRotMax4_0 set value 60
data modify storage cb:lookcheck xRotMin4_1 set value 300
data modify storage cb:lookcheck xRotMax4_1 set value 360

#//g Y
data modify storage cb:lookcheck yRotMin0 set value -45
data modify storage cb:lookcheck yRotMax0 set value 60

data modify storage cb:lookcheck yRotMin1 set value -45
data modify storage cb:lookcheck yRotMax1 set value 60

data modify storage cb:lookcheck yRotMin2 set value -45
data modify storage cb:lookcheck yRotMax2 set value 60

data modify storage cb:lookcheck yRotMin3 set value -45
data modify storage cb:lookcheck yRotMax3 set value 60

data modify storage cb:lookcheck yRotMin4 set value 29
data modify storage cb:lookcheck yRotMax4 set value 50