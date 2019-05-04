scoreboard players set #bb.math.success bb.success 1

scoreboard players add #bb.math.exponent bb.variable 1
scoreboard players operation #bb.math.input.a bb.variable = #bb.math.result bb.calculation
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.base bb.variable
function boomber:math/float4/div
scoreboard players operation #bb.math.result bb.calculation = #bb.math.result bb.variable

execute if score #bb.math.exponent bb.variable matches ..-1 run function boomber:math/function/power/negative_exponent