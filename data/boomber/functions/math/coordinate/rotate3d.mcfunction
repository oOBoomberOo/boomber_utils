#
# xᵣ = r×cosθcosϕ
# yᵣ = r×sinθcosϕ
# zᵣ = r×cosϕ
#

scoreboard players operation #bb.math.x bb.variable = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.y bb.variable = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.y bb.variable = #bb.math.input.z bb.variable
scoreboard players operation #bb.math.θ₁ bb.variable = #bb.as.input.rx bb.variable
scoreboard players operation #bb.math.θ₂ bb.variable = #bb.as.input.ry bb.variable

function boomber:math/coordinate/rotate2d
scoreboard players operation #bb.as.get.x bb.variable = #bb.math.result.x bb.variable
scoreboard players operation #bb.as.get.y bb.variable = #bb.as.input.y bb.variable
scoreboard players operation #bb.as.get.z bb.variable = #bb.math.result.y bb.variable

scoreboard players operation #bb.math.input.angle bb.variable = #bb.as.inputθ₂ bb.variable
function boomber:math/cos
scoreboard players operation #bb.as.get.cos bb.variable = #bb.math.result bb.variable
scoreboard players operation #bb.math.input.angle bb.variable = #bb.as.inputθ₂ bb.variable
function boomber:math/sin
scoreboard players operation #bb.as.get.sin bb.variable = #bb.math.result bb.variable

scoreboard players operation
