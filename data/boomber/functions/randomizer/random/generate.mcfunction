# Input: { 
#          #boomber.randomizer.random_1.seed, #boomber.randomizer.random_1.multiplier, 
#          #boomber.randomizer.random_1.increment, #boomber.randomizer.random_1.modulus 
#        }
# Output: { #boomber.randomizer.random_1.result }
# X = (aX + c + (t + hs)) mod m

# recursing -= 1
scoreboard players remove #boomber.randomizer.random_1.recursing bb.variable 1

# R = (aX + c)
scoreboard players operation #boomber.randomizer.random_1.result bb.variable = #boomber.randomizer.random_1.seed bb.variable
scoreboard players operation #boomber.randomizer.random_1.result bb.variable *= #boomber.randomizer.random_1.multiplier bb.variable
scoreboard players operation #boomber.randomizer.random_1.result bb.variable += #boomber.randomizer.random_1.increment bb.variable

# get (time, s, h)
execute store result score #boomber.randomizer.random_1.time bb.variable run time query daytime
execute store result score #boomber.randomizer.random_1.s bb.variable run data get entity @e[sort=random,limit=1] Pos[1]
execute store result score #boomber.randomizer.random_1.h bb.variable run data get entity @e[sort=random,limit=1] Health

# R = R + (t + hs)
scoreboard players operation #boomber.randomizer.random_1.h bb.variable *= #boomber.randomizer.random_1.s bb.variable
scoreboard players operation #boomber.randomizer.random_1.time bb.variable += #boomber.randomizer.random_1.s bb.variable
scoreboard players operation #boomber.randomizer.random_1.result bb.variable += #boomber.randomizer.random_1.time bb.variable

# R = R mod m
scoreboard players operation #boomber.randomizer.random_1.result bb.variable %= #boomber.randomizer.random_1.modulus bb.variable

# X = R
scoreboard players operation #boomber.randomizer.random_1.seed bb.variable = #boomber.randomizer.random_1.result bb.variable

# if (recursing > 0) run self
execute if score #boomber.randomizer.random_1.recursing bb.variable matches 1.. run function boomber:randomizer/random/generate

