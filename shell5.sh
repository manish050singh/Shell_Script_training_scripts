# Dealing with bc command and check its help

# SECTION - 1
# -----------
bc
100 + 300
# 400
100 + (200 * 30)
# 6100
(100 + 300)*(3 + 1)
# 1600
(100 + 300)*(3 ^ 2)
# 3600
100 / 3
# 33
scale=2
100/3
# 33.33
scale = 4
100 / 33
# 3.0303
ibase=2
1100
# 12
1100 * 100
# 48
obase=2
1100 * 100
# 110000
quit

# SECTION - 2
# -----------
bc
var = 100
var
# 100
var++
# 100
var
# 101
++var
# 102
var
# 102
sqrt(100)
# 10
exit

# How to check the help on bc command
# man bc     # q for quit
# bc --help
# info bc    # q for quit
# whatis bc
# teachme bc  # in Linux it does not work



























