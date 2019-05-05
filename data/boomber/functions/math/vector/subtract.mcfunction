# Subtracting 3D vector
# <- Vector<Number> [x, y, z]: vector of center coordinate, 
# 	 Vector<Number> [i, j, k]: vector of target coordinate
# -> Vector<Number> [result.x, result.y, result.z]

scoreboard players operation #bb.math.x₁ bb.vector = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.y₁ bb.vector = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.z₁ bb.vector = #bb.math.input.z bb.variable

scoreboard players operation #bb.math.x₂ bb.vector = #bb.math.input.i bb.variable
scoreboard players operation #bb.math.y₂ bb.vector = #bb.math.input.j bb.variable
scoreboard players operation #bb.math.z₂ bb.vector = #bb.math.input.k bb.variable

scoreboard players operation #bb.math.result.x bb.variable = #bb.math.x₁ bb.vector
scoreboard players operation #bb.math.result.y bb.variable = #bb.math.y₁ bb.vector
scoreboard players operation #bb.math.result.z bb.variable = #bb.math.z₁ bb.vector
scoreboard players operation #bb.math.result.x bb.variable -= #bb.math.x₂ bb.vector
scoreboard players operation #bb.math.result.y bb.variable -= #bb.math.y₂ bb.vector
scoreboard players operation #bb.math.result.z bb.variable -= #bb.math.z₂ bb.vector