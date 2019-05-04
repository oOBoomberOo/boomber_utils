# 3D Distance function
# <- {Float4 x, Float4 y, Float4 z}
# -> {Float4 result}

scoreboard players operation #bb.math.x bb.variable = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.y bb.variable = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.z bb.variable = #bb.math.input.z bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.x bb.variable
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.x bb.variable
function boomber:math/float4/mult
scoreboard players operation #bb.math.x² bb.variable = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.y bb.variable
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.y bb.variable
function boomber:math/float4/mult
scoreboard players operation #bb.math.y² bb.variable = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.z bb.variable
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.z bb.variable
function boomber:math/float4/mult
scoreboard players operation #bb.math.z² bb.variable = #bb.math.result bb.variable

scoreboard players operation #bb.math.∑ bb.variable = #bb.math.x² bb.variable
scoreboard players operation #bb.math.∑ bb.variable += #bb.math.y² bb.variable
scoreboard players operation #bb.math.∑ bb.variable += #bb.math.z² bb.variable

scoreboard players operation #bb.math.input.number bb.variable = #bb.math.∑ bb.variable
function boomber:math/sqrt