####################################################################################################################################
# Random 1
# X1 = (aX0 + c + (t + hs)) mod m
#
# t = time of the day
# h = health of random entity
# s = y level of random entity
#
# how long should a recursive function last
scoreboard players set #boomber.randomizer.random_1.recursion bb.variable 5
#
# Starting seed or X
# change this will result in difference randomizer's result
# 0 <= X < m
execute unless score #boomber.randomizer.random_1.seed bb.variable matches 0.. run scoreboard players set #boomber.randomizer.random_1.seed bb.variable 42
#
# multiplier or a
# 0 < a < m
execute unless score #boomber.randomizer.random_1.multiplier bb.variable matches 1.. run scoreboard players set #boomber.randomizer.random_1.multiplier bb.variable 32
#
# increment or c
# 0 <= c < m
execute unless score #boomber.randomizer.random_1.increment bb.variable matches 0.. run scoreboard players set #boomber.randomizer.random_1.increment bb.variable 500
#
# modulus or m
# 0 < m
execute unless score #boomber.randomizer.random_1.modulus bb.variable matches 1.. run scoreboard players set #boomber.randomizer.random_1.modulus bb.variable 5000
#
# time or t
# t = time of the day
scoreboard players set #boomber.randomizer.random_1.time bb.variable 0
#####################################################################################################################################

# Randomizer will return generated number to this scoreboard
scoreboard players set #boomber.randomizer.result bb.variable 0