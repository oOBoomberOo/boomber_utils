# Rotating 2D coordinate system
# <- Vector<Float4> [x, y]
#		 Int angle
# -> Vector<Float4> [result.x, result.y]

scoreboard players operation #bb.math.xᵢ bb.coordinate = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.yᵢ bb.coordinate = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.θ bb.coordinate = #bb.math.input.angle bb.variable

scoreboard players operation #bb.math.input.angle bb.variable = #bb.math.θ bb.coordinate
function boomber:math/cos
scoreboard players operation #bb.math.cos bb.coordinate = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.angle bb.variable = #bb.math.θ bb.coordinate
function boomber:math/sin
scoreboard players operation #bb.math.sin bb.coordinate = #bb.math.result bb.variable

# x₂ = x₁×cos(θ) - y₁×sin(θ)
# y₂ = y₁×cos(θ) + x₁×sin(θ)

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.xᵢ bb.coordinate
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.cos bb.coordinate
function boomber:math/float4/mult
scoreboard players operation #bb.math.x₁ bb.coordinate = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.yᵢ bb.coordinate
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.sin bb.coordinate
function boomber:math/float4/mult
scoreboard players operation #bb.math.y₁ bb.coordinate = #bb.math.result bb.variable

scoreboard players operation #bb.math.result.x bb.variable = #bb.math.x₁ bb.coordinate
scoreboard players operation #bb.math.result.x bb.variable -= #bb.math.y₁ bb.coordinate

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.yᵢ bb.coordinate
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.cos bb.coordinate
function boomber:math/float4/mult
scoreboard players operation #bb.math.x₂ bb.coordinate = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.xᵢ bb.coordinate
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.sin bb.coordinate
function boomber:math/float4/mult
scoreboard players operation #bb.math.y₂ bb.coordinate = #bb.math.result bb.variable

scoreboard players operation #bb.math.result.y bb.variable = #bb.math.x₂ bb.coordinate
scoreboard players operation #bb.math.result.y bb.variable += #bb.math.y₂ bb.coordinate

