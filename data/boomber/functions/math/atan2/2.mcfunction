function boomber:math/atan2/1
scoreboard players operation #bb.math.result bb.calculation = #bb.math.result bb.variable
scoreboard players operation #bb.math.result bb.variable = #90 bb.variable
scoreboard players operation #bb.math.result bb.variable -= #bb.math.result bb.calculation
scoreboard players set #bb.math.success bb.success 1