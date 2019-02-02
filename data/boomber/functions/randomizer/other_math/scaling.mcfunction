# Input: { #boomber.randomizer.scaling.input.min, #boomber.randomizer.scaling.input.max, #boomber.randomizer.scaling.input.x, #boomber.randomizer.scaling.input.a, #boomber.randomizer.scaling.input.b }
# Output: { #boomber.randomizer.scaling.out.result }
#         (b - a)(x - min)
# f(x) = ----------------- + a 
#            max - min

# set (min, max, a, b)
scoreboard players operation #boomber.randomizer.scaling.input_1 bb.variable = #boomber.randomizer.scaling.input.min bb.variable
scoreboard players operation #boomber.randomizer.scaling.input_2 bb.variable = #boomber.randomizer.scaling.input.max bb.variable
scoreboard players operation #boomber.randomizer.scaling.input_3 bb.variable = #boomber.randomizer.scaling.input.a bb.variable
scoreboard players operation #boomber.randomizer.scaling.input_4 bb.variable = #boomber.randomizer.scaling.input.b bb.variable

# (b - a)
execute store result score #boomber.randomizer.scaling.numerator1 bb.variable run scoreboard players operation #boomber.randomizer.scaling.input_4 bb.variable -= #boomber.randomizer.scaling.input_3 bb.variable
# (x - min)
execute store result score #boomber.randomizer.scaling.numerator2 bb.variable run scoreboard players operation #boomber.randomizer.scaling.input.x bb.variable -= #boomber.randomizer.scaling.input_1 bb.variable
# (b - a)(x - min)
execute store result score #boomber.randomizer.scaling.numerator bb.variable run scoreboard players operation #boomber.randomizer.scaling.numerator1 bb.variable *= #boomber.randomizer.scaling.numerator2 bb.variable

# set (min, max)
scoreboard players operation #boomber.randomizer.scaling.input_1 bb.variable = #boomber.randomizer.scaling.input.min bb.variable
scoreboard players operation #boomber.randomizer.scaling.input_2 bb.variable = #boomber.randomizer.scaling.input.max bb.variable

# (max - min)
execute store result score #boomber.randomizer.scaling.denominator bb.variable run scoreboard players operation #boomber.randomizer.scaling.input_2 bb.variable -= #boomber.randomizer.scaling.input_1 bb.variable

# numerator / denominator
execute store result score #boomber.randomizer.scaling.out.result bb.variable run scoreboard players operation #boomber.randomizer.scaling.numerator bb.variable /= #boomber.randomizer.scaling.denominator bb.variable
# result + a
execute store result score #boomber.randomizer.scaling.out.result bb.variable run scoreboard players operation #boomber.randomizer.scaling.out.result bb.variable += #boomber.randomizer.scaling.input_3 bb.variable

# set (input.min, input.max, input.x) = 0
scoreboard players set #boomber.randomizer.scaling.input.x bb.variable 0
