# Float4 power function
# <- {Float4 base, Int <exponent>}
# -> {Float4 result}

scoreboard players operation #bb.math.base bb.variable = #bb.math.input.base bb.variable
scoreboard players operation #bb.math.exponent bb.variable = #bb.math.input.exponent bb.variable

scoreboard players set #bb.math.result bb.calculation 1000
function boomber:math/function/power/main
scoreboard players operation #bb.math.result bb.variable = #bb.math.result bb.calculation

function boomber:math/debug/debugger