scoreboard objectives add lookcheck dummy

function look_check:preconfig

data merge storage cb:lookcheck {throwErrorText:"The 'ultimate' function got unacceptable macros value!"}

#//g X
data modify storage cb:lookcheck xRotMin0 set value 0
data modify storage cb:lookcheck xRotMax0 set value 60
data modify storage cb:lookcheck xRotMin1 set value 300
data modify storage cb:lookcheck xRotMax1 set value 360

#//g Y
data modify storage cb:lookcheck yRotMin0 set value -45
data modify storage cb:lookcheck yRotMax0 set value 60