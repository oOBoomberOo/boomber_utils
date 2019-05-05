scoreboard players set #bb.math.success bb.success 1

scoreboard players remove #bb.math.exponent bb.function 1
scoreboard players operation #bb.math.input.a bb.variable = #bb.math.result bb.function
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.base bb.function
function boomber:math/float4/mult
scoreboard players operation #bb.math.result bb.function = #bb.math.result bb.variable

execute if score #bb.math.exponent bb.function matches 1.. run function boomber:math/function/power/positive_exponent