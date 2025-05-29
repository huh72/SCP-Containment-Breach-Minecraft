
#4 []
#3 []
#2 []
#1 []
###1 #2 #3 #4

#lcz
#scoreboard players set sq {
# 2 - row position 
# 4 - col position 
# 0 - type (0 - empty) 
# 0 - rotation 
# 0 - все
# 
# 
# 
#}

#row - 1, column - 2


#              [check]              [check]              [check]              [check]       [check] |||   CHECKPOINNT LINE HCZ -> EZ
#[     ][     ][  ├  ][  -  ][  -  ][  ┻  ][  -  ][  -  ][  ╋  ][  -  ][  -  ][  ┻  ][  ┯  ][  ┙  ] |||
#[  0  ][     ][  |  ][     ][     ][     ][     ][     ][  0  ][     ][     ][     ][  |  ][     ] |||
#[  ├  ][  -  ][  ╋  ][  -  ][  ┓  ][     ][     ][     ][     ][     ][  ┍  ][  -  ][  ┻  ][  ┓  ] |||
#[  |  ][     ][  |  ][     ][  |  ][     ][  0  ][     ][     ][     ][  |  ][     ][     ][  |  ] |||
#[  |  ][     ][  ┕  ][  -  ][  ╋  ][  -  ][  ╋  ][  -  ][  -  ][  -  ][  ┥  ][     ][     ][  |  ] |||
#[  |  ][     ][     ][     ][  |  ][     ][  0  ][     ][     ][     ][  ├  ][  -  ][  ┯  ][  ┙  ] |||
#[  |  ][     ][     ][     ][  |  ][     ][     ][     ][     ][     ][  |  ][     ][  |  ][     ] |||
#[check]                     [check]                                   [check]       [check]        |||   CHECKPOINNT LINE LCZ -> HCZ
#[  ┕  ][  -  ][  -  ][  -  ][  ╋  ][  -  ][  -  ][  -  ][  -  ][  -  ][  ╋  ][  -  ][  ╋  ][  0  ] |||
#[     ][     ][     ][     ][  |  ][     ][     ][     ][     ][     ][  |  ][     ][  |  ][     ] |||
#[     ][     ][     ][     ][  |  ][     ][     ][  0  ][     ][     ][  |  ][     ][  |  ][     ] |||
#[  ┍  ][  -  ][  -  ][  -  ][  ╋  ][  -  ][  -  ][  ╋  ][  -  ][  -  ][  ╋  ][  -  ][  ┙  ][     ] |||
#[  |  ][     ][     ][     ][  |  ][     ][     ][  |  ][     ][     ][  |  ][     ][     ][     ] |||
#[  ┕  ][  -  ][  ┯  ][  -  ][  ┙  ][     ][     ][  |  ][     ][     ][  ├  ][  0  ][     ][     ] |||
#[     ][     ][  |  ][     ][     ][     ][     ][  |  ][     ][     ][  |  ][     ][     ][     ] |||
#[     ][     ][  ┕  ][  -  ][  -  ][  ┯  ][  -  ][  ┻  ][  -  ][  -  ][  ┻  ][  -  ][  0  ][     ] |||
#[     ][     ][     ][     ][     ][start][     ][     ][     ][     ][     ][     ][     ][     ] |||

##temp:
##-1 - filler "filler"

# 0 - empty

#1 - straight ( - )
#2 - straight ( | )

#3 - corner (┓) "coner0_2"
#6 - corner (┕) "coner0_4"
#4 - corner (┙) "coner0_3"
#5 - corner (┍) "coner0_1"

#7 - t_formed (├) "t_formed0_4"
#8 - t_formed (┻) "t_formed0_3"
#9 - t_formed (┥) "t_formed0_2"
#10 - t_formed (┯) "t_formed0_1"

#11 - x_formed (╋) "x_formed0_0"

#12 - lczcheck (check) "lczcheck"

#13 - deadend (0 up) "deadend_1"
#14 - deadend (0 down) "deadend_2"
#15 - deadend (<- 0) "deadend_3"
#16 - deadend (0 ->) "deadend_4"

#row 0 
scoreboard players set 01 sq 0
scoreboard players set 02 sq 0
scoreboard players set 03 sq 0
scoreboard players set 04 sq 0
scoreboard players set 05 sq 0
# scoreboard players set 06 sq 10
scoreboard players set 07 sq 0
scoreboard players set 08 sq 0
scoreboard players set 09 sq 0
scoreboard players set 010 sq 0
scoreboard players set 011 sq 0
scoreboard players set 012 sq 0
scoreboard players set 013 sq 0
scoreboard players set 014 sq 0

#row 1
scoreboard players set 11 sq 0
scoreboard players set 12 sq 0
scoreboard players set 13 sq 3
scoreboard players set 14 sq 1
scoreboard players set 15 sq 1
scoreboard players set 16 sq 10
scoreboard players set 17 sq 1
scoreboard players set 18 sq 8
scoreboard players set 19 sq 1
scoreboard players set 110 sq 1
scoreboard players set 111 sq 8
scoreboard players set 112 sq 1
scoreboard players set 113 sq 16
scoreboard players set 114 sq 0

#row 2
scoreboard players set 21 sq 0
scoreboard players set 22 sq 0
scoreboard players set 23 sq 2
scoreboard players set 24 sq 0
scoreboard players set 25 sq 0
scoreboard players set 26 sq 0
scoreboard players set 27 sq 0
scoreboard players set 28 sq 2
scoreboard players set 29 sq 0
scoreboard players set 210 sq 0
scoreboard players set 211 sq 2
scoreboard players set 212 sq 0
scoreboard players set 213 sq 0
scoreboard players set 214 sq 0

#row 3
scoreboard players set 31 sq 3
scoreboard players set 32 sq 1
scoreboard players set 33 sq 10
scoreboard players set 34 sq 1
scoreboard players set 35 sq 4
scoreboard players set 36 sq 0
scoreboard players set 37 sq 0
scoreboard players set 38 sq 2
scoreboard players set 39 sq 0
scoreboard players set 310 sq 15
scoreboard players set 311 sq 11
scoreboard players set 312 sq 16
scoreboard players set 313 sq 0
scoreboard players set 314 sq 0

#row 4
scoreboard players set 41 sq 2
scoreboard players set 42 sq 0
scoreboard players set 43 sq 0
scoreboard players set 44 sq 0
scoreboard players set 45 sq 2
scoreboard players set 46 sq 0
scoreboard players set 47 sq 0
scoreboard players set 48 sq 2
scoreboard players set 49 sq 0
scoreboard players set 410 sq 0
scoreboard players set 411 sq 2
scoreboard players set 412 sq 0
scoreboard players set 413 sq 0
scoreboard players set 414 sq 0

#row 5
scoreboard players set 51 sq 6
scoreboard players set 52 sq 1
scoreboard players set 53 sq 1
scoreboard players set 54 sq 1
scoreboard players set 55 sq 11
scoreboard players set 56 sq 1
scoreboard players set 57 sq 1
scoreboard players set 58 sq 11
scoreboard players set 59 sq 1
scoreboard players set 510 sq 1
scoreboard players set 511 sq 11
scoreboard players set 512 sq 1
scoreboard players set 513 sq 4
scoreboard players set 514 sq 0

#row 6
scoreboard players set 61 sq 0
scoreboard players set 62 sq 0
scoreboard players set 63 sq 0
scoreboard players set 64 sq 0
scoreboard players set 65 sq 2
scoreboard players set 66 sq 0
scoreboard players set 67 sq 0
scoreboard players set 68 sq 13
scoreboard players set 69 sq 0
scoreboard players set 610 sq 0
scoreboard players set 611 sq 2
scoreboard players set 612 sq 0
scoreboard players set 613 sq 2
scoreboard players set 614 sq 0

#row 7
scoreboard players set 71 sq 0
scoreboard players set 72 sq 0
scoreboard players set 73 sq 0
scoreboard players set 74 sq 0
scoreboard players set 75 sq 2
scoreboard players set 76 sq 0
scoreboard players set 77 sq 0
scoreboard players set 78 sq 0
scoreboard players set 79 sq 0
scoreboard players set 710 sq 0
scoreboard players set 711 sq 2
scoreboard players set 712 sq 0
scoreboard players set 713 sq 2
scoreboard players set 714 sq 0

#row 8
scoreboard players set 81 sq 3
scoreboard players set 82 sq 1
scoreboard players set 83 sq 1
scoreboard players set 84 sq 1
scoreboard players set 85 sq 11
scoreboard players set 86 sq 1
scoreboard players set 87 sq 1
scoreboard players set 88 sq 1
scoreboard players set 89 sq 1
scoreboard players set 810 sq 1
scoreboard players set 811 sq 11
scoreboard players set 812 sq 1
scoreboard players set 813 sq 11
scoreboard players set 814 sq 16


#row 9
scoreboard players set 91 sq 12
scoreboard players set 92 sq 0
scoreboard players set 93 sq 0
scoreboard players set 94 sq 0
scoreboard players set 95 sq 12
scoreboard players set 96 sq 0
scoreboard players set 97 sq 0
scoreboard players set 98 sq 0
scoreboard players set 99 sq 0
scoreboard players set 910 sq 0
scoreboard players set 911 sq 12
scoreboard players set 912 sq 0
scoreboard players set 913 sq 12
scoreboard players set 914 sq 0


###&6 HCZ
###&6 HCZ
###&6 HCZ


#row 10
scoreboard players set 101 hsq 2
scoreboard players set 102 hsq 0
scoreboard players set 103 hsq 0
scoreboard players set 104 hsq 0
scoreboard players set 105 hsq 2
scoreboard players set 106 hsq 0
scoreboard players set 107 hsq 0
scoreboard players set 108 hsq 0
scoreboard players set 109 hsq 0
scoreboard players set 1010 hsq 0
scoreboard players set 1011 hsq 2
scoreboard players set 1012 hsq 0
scoreboard players set 1013 hsq 2
scoreboard players set 1014 hsq 0

#row 11
scoreboard players set 111 hsq 2
scoreboard players set 112 hsq 0
scoreboard players set 113 hsq 0
scoreboard players set 114 hsq 0
scoreboard players set 115 hsq 2
scoreboard players set 116 hsq 0
scoreboard players set 117 hsq 13
scoreboard players set 118 hsq 0
scoreboard players set 119 hsq 0
scoreboard players set 1110 hsq 0
scoreboard players set 1111 hsq 7
scoreboard players set 1112 hsq 1
scoreboard players set 1113 hsq 10
scoreboard players set 1114 hsq 4

#row 12
scoreboard players set 121 hsq 2
scoreboard players set 122 hsq 0
scoreboard players set 123 hsq 6
scoreboard players set 124 hsq 1
scoreboard players set 125 hsq 11
scoreboard players set 126 hsq 1
scoreboard players set 127 hsq 11
scoreboard players set 128 hsq 1
scoreboard players set 129 hsq 1
scoreboard players set 1210 hsq 1
scoreboard players set 1211 hsq 9
scoreboard players set 1212 hsq 0
scoreboard players set 1213 hsq 0
scoreboard players set 1214 hsq 2

#row 13
scoreboard players set 131 hsq 2
scoreboard players set 132 hsq 0
scoreboard players set 133 hsq 2
scoreboard players set 134 hsq 0
scoreboard players set 135 hsq 2
scoreboard players set 136 hsq 0
scoreboard players set 137 hsq 14
scoreboard players set 138 hsq 0
scoreboard players set 139 hsq 0
scoreboard players set 1310 hsq 0
scoreboard players set 1311 hsq 2
scoreboard players set 1312 hsq 0
scoreboard players set 1313 hsq 0
scoreboard players set 1314 hsq 2

#row 14
scoreboard players set 141 hsq 7
scoreboard players set 142 hsq 1
scoreboard players set 143 hsq 11
scoreboard players set 144 hsq 1
scoreboard players set 145 hsq 3
scoreboard players set 146 hsq 0
scoreboard players set 147 hsq 0
scoreboard players set 148 hsq 0
scoreboard players set 149 hsq 0
scoreboard players set 1410 hsq 0
scoreboard players set 1411 hsq 5
scoreboard players set 1412 hsq 1
scoreboard players set 1413 hsq 8
scoreboard players set 1414 hsq 3

#row 15
scoreboard players set 151 hsq 14
scoreboard players set 152 hsq 0
scoreboard players set 153 hsq 2
scoreboard players set 154 hsq 0
scoreboard players set 155 hsq 0
scoreboard players set 156 hsq 0
scoreboard players set 157 hsq 0
scoreboard players set 158 hsq 0
scoreboard players set 159 hsq 13
scoreboard players set 1510 hsq 0
scoreboard players set 1511 hsq 0
scoreboard players set 1512 hsq 0
scoreboard players set 1513 hsq 2
scoreboard players set 1514 hsq 0

#row 16
scoreboard players set 161 hsq 0
scoreboard players set 162 hsq 0
scoreboard players set 163 hsq 7
scoreboard players set 164 hsq 1
scoreboard players set 165 hsq 1
scoreboard players set 166 hsq 8
scoreboard players set 167 hsq 1
scoreboard players set 168 hsq 1
scoreboard players set 169 hsq 11
scoreboard players set 1610 hsq 1
scoreboard players set 1611 hsq 1
scoreboard players set 1612 hsq 8
scoreboard players set 1613 hsq 10
scoreboard players set 1614 hsq 4

#row 17
scoreboard players set 171 hsq 0
scoreboard players set 172 hsq 0
scoreboard players set 173 hsq 12
scoreboard players set 174 hsq 0
scoreboard players set 175 hsq 0
scoreboard players set 176 hsq 12
scoreboard players set 177 hsq 0
scoreboard players set 178 hsq 0
scoreboard players set 179 hsq 12
scoreboard players set 1710 hsq 0
scoreboard players set 1711 hsq 0
scoreboard players set 1712 hsq 12
scoreboard players set 1713 hsq 0
scoreboard players set 1714 hsq 12


#1 - straight ( - )
#2 - straight ( | )
###3 - corner (┓) "coner0_2"
#6 - corner (┕) "coner0_4"
#4 - corner (┙) "coner0_3"
#5 - corner (┍) "coner0_1"
###7 - t_formed (├) "t_formed0_4"
#8 - t_formed (┻) "t_formed0_3"
#9 - t_formed (┥) "t_formed0_2"
#10 - t_formed (┯) "t_formed0_1"
###11 - x_formed (╋) "x_formed0_0"
###12 - hczcheck (check) "hczcheck"
###13 - deadend (0 up) "deadend_1"
#14 - deadend (0 down) "deadend_2"
#15 - deadend (<- 0) "deadend_3"
#16 - deadend (0 ->) "deadend_4"
#17 - fake hcz checkpoint

#17              [check]              [check]              [check]              [check]       [check] |||   CHECKPOINNT LINE HCZ -> EZ
#16[     ][     ][  ├  ][  -  ][  -  ][  ┻  ][  -  ][  -  ][  ╋  ][  -  ][  -  ][  ┻  ][  ┯  ][  ┙  ] |||
#15[  0  ][     ][  |  ][     ][     ][     ][     ][     ][  0  ][     ][     ][     ][  |  ][     ] |||
#14[  ├  ][  -  ][  ╋  ][  -  ][  ┓  ][     ][     ][     ][     ][     ][  ┍  ][  -  ][  ┻  ][  ┓  ] |||
#13[  |  ][     ][  |  ][     ][  |  ][     ][  0  ][     ][     ][     ][  |  ][     ][     ][  |  ] |||
#12[  |  ][     ][  ┕  ][  -  ][  ╋  ][  -  ][  ╋  ][  -  ][  -  ][  -  ][  ┥  ][     ][     ][  |  ] |||
#11[  |  ][     ][     ][     ][  |  ][     ][  0  ][     ][     ][     ][  ├  ][  -  ][  ┯  ][  ┙  ] |||
#10[  |  ][     ][     ][     ][  |  ][     ][     ][     ][     ][     ][  |  ][     ][  |  ][     ] |||
#9 [check]                     [check]                                   [check]       [check]        |||   CHECKPOINNT LINE LCZ -> HCZ
#8 [  ┕  ][  -  ][  -  ][  -  ][  ╋  ][  -  ][  -  ][  -  ][  -  ][  -  ][  ╋  ][  -  ][  ╋  ][  0  ] |||
#7 [     ][     ][     ][     ][  |  ][     ][     ][     ][     ][     ][  |  ][     ][  |  ][     ] |||
#6 [     ][     ][     ][     ][  |  ][     ][     ][  0  ][     ][     ][  |  ][     ][  |  ][     ] |||
#5 [  ┍  ][  -  ][  -  ][  -  ][  ╋  ][  -  ][  -  ][  ╋  ][  -  ][  -  ][  ╋  ][  -  ][  ┙  ][     ] |||
#4 [  |  ][     ][     ][     ][  |  ][     ][     ][  |  ][     ][     ][  |  ][     ][     ][     ] |||
#3 [  ┕  ][  -  ][  ┯  ][  -  ][  ┙  ][     ][     ][  |  ][     ][     ][  ├  ][  0  ][     ][     ] |||
#2 [     ][     ][  |  ][     ][     ][     ][     ][  |  ][     ][     ][  |  ][     ][     ][     ] |||
#1 [     ][     ][  ┕  ][  -  ][  -  ][  ┯  ][  -  ][  ┻  ][  -  ][  -  ][  ┻  ][  -  ][  0  ][     ] |||
#0 [     ][     ][     ][     ][     ][start][     ][     ][     ][     ][     ][     ][     ][     ] |||