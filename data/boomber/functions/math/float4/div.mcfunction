# dividing float4 function
# <- {Float4 a, Float4 b}
# -> {Float4 result}

scoreboard players operation #bb.math.🐢 bb.variable = #bb.math.input.a bb.variable
scoreboard players operation #bb.math.🦃 bb.variable = #bb.math.input.b bb.variable

scoreboard players operation #bb.math.result bb.variable = #bb.math.🐢 bb.variable
scoreboard players operation #bb.math.result bb.variable *= #1000 bb.variable
scoreboard players operation #bb.math.result bb.variable /= #bb.math.🦃 bb.variable
function boomber:math/debug/debugger