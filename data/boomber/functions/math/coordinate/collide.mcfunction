# Colliding detection
# <- Vector<Float4> [x, y, z]: vector of center coordinate,
#    Vector<Float4> [i, j, k]: vector of target coordinate, 
#    Vector<Float4> [w, h, d]: vector of hitbox in [x, y, z]
# -> Bool result

scoreboard players operation #bb.math.x₁ bb.variable = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.y₁ bb.variable = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.z₁ bb.variable = #bb.math.input.z bb.variable

scoreboard players operation #bb.math.x₂ bb.variable = #bb.math.input.i bb.variable
scoreboard players operation #bb.math.y₂ bb.variable = #bb.math.input.j bb.variable
scoreboard players operation #bb.math.z₂ bb.variable = #bb.math.input.k bb.variable

scoreboard players operation #bb.math.w bb.variable = #bb.math.input.w bb.variable
scoreboard players operation #bb.math.h bb.variable = #bb.math.input.h bb.variable
scoreboard players operation #bb.math.d bb.variable = #bb.math.input.d bb.variable

function boomber:math/vector/subtract

scoreboard players operation #bb.math.x bb.calculation = #bb.math.result.x bb.variable
scoreboard players operation #bb.math.y bb.calculation = #bb.math.result.y bb.variable
scoreboard players operation #bb.math.z bb.calculation = #bb.math.result.z bb.variable

scoreboard players operation #bb.math.offset.w₁ bb.calculation = #bb.math.w bb.variable
scoreboard players operation #bb.math.offset.w₁ bb.calculation /= #2 bb.variable
scoreboard players operation #bb.math.offset.h₁ bb.calculation = #bb.math.h bb.variable
scoreboard players operation #bb.math.offset.h₁ bb.calculation /= #2 bb.variable
scoreboard players operation #bb.math.offset.d₁ bb.calculation = #bb.math.d bb.variable
scoreboard players operation #bb.math.offset.d₁ bb.calculation /= #2 bb.variable

scoreboard players operation #bb.math.offset.w₂ bb.calculation = #bb.math.offset.w₁ bb.calculation
scoreboard players operation #bb.math.offset.w₂ bb.calculation *= #-1 bb.variable
scoreboard players operation #bb.math.offset.h₂ bb.calculation = #bb.math.h bb.variable
scoreboard players operation #bb.math.offset.h₂ bb.calculation *= #-1 bb.variable
scoreboard players operation #bb.math.offset.d₂ bb.calculation = #bb.math.offset.d₁ bb.calculation
scoreboard players operation #bb.math.offset.d₂ bb.calculation *= #-1 bb.variable

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.offset.w₂ bb.calculation < #bb.math.x bb.calculation if score #bb.math.x bb.calculation < #bb.math.offset.w₁ bb.calculation if score #bb.math.offset.h₂ bb.calculation < #bb.math.y bb.calculation if score #bb.math.y bb.calculation < #bb.math.offset.h₁ bb.calculation if score #bb.math.offset.d₂ bb.calculation < #bb.math.z bb.calculation if score #bb.math.z bb.calculation < #bb.math.offset.d₁ bb.calculation run scoreboard players set #bb.math.result bb.variable 1