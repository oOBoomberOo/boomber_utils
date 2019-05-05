# 3D Distance function
# <- Vector<Float4> [x, y, z]}
# -> Float4 result

scoreboard players operation #bb.math.x bb.function = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.y bb.function = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.z bb.function = #bb.math.input.z bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.x bb.function
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.x bb.function
function boomber:math/float4/mult
scoreboard players operation #bb.math.x² bb.function = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.y bb.function
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.y bb.function
function boomber:math/float4/mult
scoreboard players operation #bb.math.y² bb.function = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.z bb.function
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.z bb.function
function boomber:math/float4/mult
scoreboard players operation #bb.math.z² bb.function = #bb.math.result bb.variable

scoreboard players operation #bb.math.∑ bb.function = #bb.math.x² bb.function
scoreboard players operation #bb.math.∑ bb.function += #bb.math.y² bb.function
scoreboard players operation #bb.math.∑ bb.function += #bb.math.z² bb.function

scoreboard players operation #bb.math.input.number bb.variable = #bb.math.∑ bb.function
function boomber:math/sqrt