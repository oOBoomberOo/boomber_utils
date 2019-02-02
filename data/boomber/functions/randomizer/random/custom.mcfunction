scoreboard players operation #boomber.randomizer.random_1.recursing bb.variable = #boomber.randomizer.random_1.recursion bb.variable


function boomber:randomizer/random/generate

# set up input
scoreboard players operation #boomber.randomizer.scaling.input.a bb.variable = #boomber.randomizer.random_1.input.min bb.variable
scoreboard players operation #boomber.randomizer.scaling.input.b bb.variable = #boomber.randomizer.random_1.input.max bb.variable
scoreboard players set #boomber.randomizer.scaling.input.min bb.variable 0
scoreboard players set #boomber.randomizer.scaling.input.max bb.variable 5000
scoreboard players operation #boomber.randomizer.scaling.input.x bb.variable = #boomber.randomizer.random_1.seed bb.variable

function boomber:randomizer/other_math/scaling

scoreboard players operation #boomber.randomizer.result bb.variable = #boomber.randomizer.scaling.out.result bb.variable