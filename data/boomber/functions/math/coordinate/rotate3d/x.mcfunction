# Rotate vector in z plane
# <- Vector<Float4> [x, y, z]
#    Int angle
# -> Vector<Float4> [result.x, result.y, result.z]

scoreboard players operation #bb.math.xᵢ bb.coordinate = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.yᵢ bb.coordinate = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.zᵢ bb.coordinate = #bb.math.input.z bb.variable
scoreboard players operation #bb.math.θ bb.coordinate = #bb.math.input.angle bb.variable

# get cos θ, sin θ
scoreboard players operation #bb.math.input.angle bb.variable = #bb.math.θ bb.coordinate
function boomber:math/cos
scoreboard players operation #bb.math.cos bb.coordinate = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.angle bb.variable = #bb.math.θ bb.coordinate
function boomber:math/sin
scoreboard players operation #bb.math.sin bb.coordinate = #bb.math.result bb.variable

# get [y, z]×cos θ, [y, z]×sin θ
scoreboard players operation #bb.math.input.a bb.variable = #bb.math.yᵢ bb.coordinate
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.cos bb.coordinate
function boomber:math/float4/mult
scoreboard players operation #bb.math.yᵢ.cos bb.coordinate = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.yᵢ bb.coordinate
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.sin bb.coordinate
function boomber:math/float4/mult
scoreboard players operation #bb.math.yᵢ.sin bb.coordinate = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.zᵢ bb.coordinate
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.cos bb.coordinate
function boomber:math/float4/mult
scoreboard players operation #bb.math.zᵢ.cos bb.coordinate = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.a bb.variable = #bb.math.zᵢ bb.coordinate
scoreboard players operation #bb.math.input.b bb.variable = #bb.math.sin bb.coordinate
function boomber:math/float4/mult
scoreboard players operation #bb.math.zᵢ.sin bb.coordinate = #bb.math.result bb.variable

# x̄ = x
# ȳ = y×cos θ - z×sin θ
# z̄ = y×sin θ + z×cos θ

scoreboard players operation #bb.math.x̄ bb.coordinate = #bb.math.xᵢ bb.coordinate
scoreboard players operation #bb.math.ȳ bb.coordinate = #bb.math.yᵢ.cos bb.coordinate
scoreboard players operation #bb.math.ȳ bb.coordinate -= #bb.math.zᵢ.sin bb.coordinate
scoreboard players operation #bb.math.z̄ bb.coordinate = #bb.math.yᵢ.sin bb.coordinate
scoreboard players operation #bb.math.z̄ bb.coordinate += #bb.math.zᵢ.cos bb.coordinate

scoreboard players operation #bb.math.result.x bb.variable = #bb.math.x̄ bb.coordinate
scoreboard players operation #bb.math.result.y bb.variable = #bb.math.ȳ bb.coordinate
scoreboard players operation #bb.math.result.z bb.variable = #bb.math.z̄ bb.coordinate