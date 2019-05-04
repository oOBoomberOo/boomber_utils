# Rotating 2D coordinate system
# <- Vector<Float4> [x, y]
#		 Int angle
# -> Vector<Float4> [result.x, result.y]

scoreboard players operation #bb.math.coord.xᵢ bb.calculation = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.coord.yᵢ bb.calculation = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.coord.θ bb.calculation = #bb.math.input.angle bb.variable

scoreboard players operation #bb.math.input.angle bb.variable = #bb.math.coord.θ bb.calculation
function boomber:math/cos
scoreboard players operation #bb.math.coord.cos bb.calculation = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.angle bb.variable = #bb.math.coord.θ bb.calculation
function boomber:math/sin
scoreboard players operation #bb.math.coord.sin bb.calculation = #bb.math.result bb.variable

# x₂ = x₁×cos(θ) - y₁×sin(θ)
# y₂ = y₁×cos(θ) + x₁×sin(θ)

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.coord.xᵢ bb.calculation
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.coord.cos bb.calculation
funtion boomber:math/float4/mult
scoreboard players operation #bb.math.coord.x₁ bb.calculation = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.coord.yᵢ bb.calculation
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.coord.sin bb.calculation
funtion boomber:math/float4/mult
scoreboard players operation #bb.math.coord.y₁ bb.calculation = #bb.math.result bb.variable

scoreboard players operation #bb.math.result.x bb.variable = #bb.math.coord.x₁ bb.calculation
scoreboard players operation #bb.math.result.x bb.variable -= #bb.math.coord.y₁ bb.calculation

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.coord.yᵢ bb.calculation
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.coord.cos bb.calculation
funtion boomber:math/float4/mult
scoreboard players operation #bb.math.coord.x₂ bb.calculation = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.coord.xᵢ bb.calculation
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.coord.sin bb.calculation
funtion boomber:math/float4/mult
scoreboard players operation #bb.math.coord.y₂ bb.calculation = #bb.math.result bb.variable

scoreboard players operation #bb.math.result.y bb.variable = #bb.math.coord.x₂ bb.calculation
scoreboard players operation #bb.math.result.y bb.variable += #bb.math.coord.y₂ bb.calculation

